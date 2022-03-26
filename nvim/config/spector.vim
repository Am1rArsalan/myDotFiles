nmap <leader>d<space> :lua require'dap'.continue()<CR>
nmap <leader>dj  :lua require'dap'.step_over()<CR>
nmap <leader>dl :lua require'dap'.step_into()<CR>
nmap <leader>do :lua require'dap'.step_out()<CR>
nmap <leader>dbp :lua require'dap'.toggle_breakpoint()<CR>
nmap <leader>dsc :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nmap <leader>dsb :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
nmap <leader>dro :lua require'dap'.repl.open()<CR>
nmap <leader>drl :lua require'dap'.run_last()<CR>
nmap <leader>dt :lua require'dap-go'.debug_test()<CR>


lua <<EOF
    require("nvim-dap-virtual-text").setup()
    require('dap-go').setup()
    require("dapui").setup()
    local dap, dapui = require("dap"), require("dapui")

    dap.adapters.go = {
      type = 'executable';
      command = 'node';
      args = {os.getenv('HOME') .. '/personal/vscode-go/dist/debugAdapter.js'};
    }

    dap.adapters.node2 = {
      type = 'executable',
      command = 'node',
      args = {os.getenv('HOME') .. '/personal/vscode-node-debug2/out/src/nodeDebug.js'},
    }
    dap.configurations.javascript = {
      {
        name = 'Launch',
        type = 'node2',
        request = 'launch',
        program = '${file}',
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = 'inspector',
        console = 'integratedTerminal',
      },
      {
        -- For this to work you need to make sure the node process is started with the `--inspect` flag.
        name = 'Attach to process',
        type = 'node2',
        request = 'attach',
        processId = require'dap.utils'.pick_process,
      },
    }

    dap.configurations.typescript= {
      {
        name = 'Launch',
        type = 'node2',
        request = 'launch',
        program = '${file}',
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = 'inspector',
        console = 'integratedTerminal',
      },
      {
        -- For this to work you need to make sure the node process is started with the `--inspect` flag.
        name = 'Attach to process',
        type = 'node2',
        request = 'attach',
        processId = require'dap.utils'.pick_process,
      },
    }


    dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
    end

    dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
    end

EOF







"nmap <leader>dx :VimspectorReset<CR>
"nmap <leader>de :VimspectorEval
"nmap <leader>dw :VimspectorWatch<CR>
"nmap <leader>do :VimspectorShowOutput
"nmap <leader>dl <Plug>VimspectorStepInto
"nmap <leader>dj <Plug>VimspectorStepOver
"nmap <leader>dk <Plug>VimspectorStepOut
"nmap <leader>d_ <Plug>VimspectorRestart
"nnoremap <leader>d<space> :call vimspector#Continue()<CR>
"nmap <leader>drc <Plug>VimspectorRunToCursor
"nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
"nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint
"let g:vimspector_enable_mappings = 'HUMAN'
