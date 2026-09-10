// RTK OpenCode plugin — rewrites commands to use rtk for token savings.
// Requires: rtk >= 0.23.0 in PATH.
//
// This is a thin delegating plugin: all rewrite logic lives in `rtk rewrite`,
// which is the single source of truth (src/discover/registry.rs).
// To add or change rewrite rules, edit the Rust registry — not this file.
//
// NOTE: intentionally no `import { Plugin } from "@opencode/plugin"`.
// Plugin.define() is only a type helper; importing it breaks loading when
// the resolver runs from the project directory instead of
// ~/.config/opencode (see "Cannot find package '@opencode/plugin'").
// A plain default export with `id` + `setup()` loads in V2, and `server()`
// keeps V1 working.
import { spawnSync } from "node:child_process"

function hasRtk(): boolean {
  try {
    const r = spawnSync("which", ["rtk"], { encoding: "utf-8", timeout: 2000 })
    return r.status === 0
  } catch {
    return false
  }
}

function rewriteCommand(command: string): string {
  if (!command) return command
  try {
    const r = spawnSync("rtk", ["rewrite", command], {
      encoding: "utf-8",
      timeout: 2000,
    })
    if (r.status === 0) {
      const out = String(r.stdout ?? "").trim()
      if (out && out !== command) return out
    }
  } catch {
    // rtk rewrite failed — pass through unchanged
  }
  return command
}

async function setupV2(ctx: { shell: any; tool: any }) {
  if (!hasRtk()) {
    console.warn("[rtk] rtk binary not found in PATH — plugin disabled")
    return
  }

  // Covers every shell execution (including the `shell` tool).
  await ctx.shell.hook("create.before", (event: any) => {
    if (typeof event?.command !== "string" || !event.command) return
    const rewritten = rewriteCommand(event.command)
    if (rewritten !== event.command) event.command = rewritten
  })

  // Belt-and-braces: also rewrite the `shell` tool input directly
  // (V1 used `bash`/`shell` tool names; V2 uses `shell`).
  await ctx.tool.hook("execute.before", (event: any) => {
    const tool = String(event?.tool ?? "").toLowerCase()
    if (tool !== "bash" && tool !== "shell") return
    const input = (event as any)?.input as Record<string, unknown> | undefined
    const command = input?.command
    if (typeof command !== "string" || !command) return
    const rewritten = rewriteCommand(command)
    if (rewritten !== command) input!.command = rewritten
  })
}

function v1Hooks() {
  if (!hasRtk()) {
    console.warn("[rtk] rtk binary not found in PATH — plugin disabled")
    return {}
  }
  return {
    "tool.execute.before": async (input: any, output: any) => {
      const tool = String(input?.tool ?? "").toLowerCase()
      if (tool !== "bash" && tool !== "shell") return
      const args = output?.args
      if (!args || typeof args !== "object") return
      const command = (args as Record<string, unknown>).command
      if (typeof command !== "string" || !command) return
      const rewritten = rewriteCommand(command)
      if (rewritten && rewritten !== command) {
        ;(args as Record<string, unknown>).command = rewritten
      }
    },
  }
}

export default {
  id: "rtk",
  async setup(ctx: any) {
    await setupV2(ctx)
  },
  // V1 (`opencode`) entrypoint — ignored by V2. Keeps the same
  // file working if you still run V1 side-by-side.
  async server() {
    return v1Hooks()
  },
}
