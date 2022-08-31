local status,packer = pcall(require, 'packer') 

if (not status) then 
	print('packer is not installed')
	return 
end 

vim.cmd [[packadd packer.nvim]] 

packer.startup(function(use) 
	-- packer 
       use 'wbthomason/packer.nvim' -- Package manager
	-- lsp 
	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

	use({
		"glepnir/lspsaga.nvim",
		branch = "main" 
	})


	-- git 
	use {
         	'lewis6991/gitsigns.nvim',
		-- tag = 'release' -- To use the latest release
	}
	use {
		'dinhhuy258/git.nvim'
	}
	-- theme 
	use 'folke/tokyonight.nvim'

    -- lualine
	use 'nvim-lualine/lualine.nvim' 

    -- lsp 
	use 'onsails/lspkind-nvim'
	use 'L3MON4D3/LuaSnip'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/nvim-cmp'

    -- treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

    -- auto close tag 
	use 'windwp/nvim-ts-autotag'
    -- telescope    
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use { "nvim-telescope/telescope-file-browser.nvim" }
    -- format code 
	use('jose-elias-alvarez/null-ls.nvim')
	use('MunifTanjim/prettier.nvim')


    use { "williamboman/mason.nvim" }
    use { "williamboman/mason-lspconfig.nvim" }

    --git
    use 'rbong/vim-flog'
    use("TimUntersberger/neogit")


    --airline and vim be god
    use 'vim-airline/vim-airline'



    --nerd tree
    use 'scrooloose/nerdcommenter'

    --undotree
    use 'mbbill/undotree'

    --copilot
    --use 'github/copilot.vim'

    -- debugger
    use("mfussenegger/nvim-dap")
    use("rcarriga/nvim-dap-ui")
    use("theHamsta/nvim-dap-virtual-text")

end)




-- auto tag 
local status, autotag = pcall(require, "nvim-ts-autotag")
if (not status) then return end
autotag.setup({})



-- mason 
local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then return end

mason.setup({

})

lspconfig.setup {
  ensure_installed = { "sumneko_lua", "tailwindcss" },
}

