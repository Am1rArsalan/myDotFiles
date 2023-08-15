local status, packer = pcall(require, 'packer')

if (not status) then
    print('packer is not installed')
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    -- packer
    use 'wbthomason/packer.nvim'
    -- Common utilities
    use 'nvim-lua/plenary.nvim'

    -- telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }


    -- lsp configs
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    --
    use 'eandrju/cellular-automaton.nvim'

    -- git
    use {
        'lewis6991/gitsigns.nvim',
    }
    use("TimUntersberger/neogit")
    use {
        'dinhhuy258/git.nvim'
    }
    use 'rbong/vim-flog'

    --copilot
    use 'github/copilot.vim'

    -- lualine
    use 'nvim-lualine/lualine.nvim'

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use("nvim-treesitter/playground")
    use 'nvim-treesitter/nvim-treesitter-context'
    use("theprimeagen/harpoon")

    --undotree
    use 'mbbill/undotree'

    -- format code
    use('jose-elias-alvarez/null-ls.nvim')
    use('MunifTanjim/prettier.nvim')

    -- devicons
    use 'kyazdani42/nvim-web-devicons' -- File icons

    --nerd commenter
    use 'scrooloose/nerdcommenter'

    -- debugger
    use("mfussenegger/nvim-dap")
    use("rcarriga/nvim-dap-ui")
    use("theHamsta/nvim-dap-virtual-text")
    use 'leoluz/nvim-dap-go' -- Install the plugin with Packer


    -- rustlang
    use 'simrat39/rust-tools.nvim'

    -- golang
    use 'ray-x/go.nvim'
    use 'ray-x/guihua.lua'

    -- test tree
    use {
        "nvim-neotest/neotest",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
            "antoinemadec/FixCursorHold.nvim",
            "rouge8/neotest-rust",
            "nvim-neotest/neotest-go",
        }
    }

    -- themes
    use { "ellisonleao/gruvbox.nvim" }
    use 'folke/tokyonight.nvim'
    use {
        'svrana/neosolarized.nvim',
        requires = { 'tjdevries/colorbuddy.nvim' }
    }
    use 'Mofiqul/vscode.nvim'
    use 'shaunsingh/solarized.nvim'


    -- use("folke/zen-mode.nvim")
    -- use("eandrju/cellular-automaton.nvim")
    -- use("laytan/cloak.nvim")
    -- use 'jose-elias-alvarez/null-ls.nvim'
end)
