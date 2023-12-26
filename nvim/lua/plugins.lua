local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
	  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	  vim.cmd [[packadd packer.nvim]]
	  return true
	end
	return false
  end
  
  local packer_bootstrap = ensure_packer()
  
  return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'nvim-lualine/lualine.nvim'
	use 'nvim-tree/nvim-tree.lua'
	use { 'catppuccin/nvim', as = 'catppuccin' }
	use 'akinsho/horizon.nvim'
	use 'norcalli/nvim-colorizer.lua'
	use 'neovim/nvim-lspconfig'
	use 'simrat39/rust-tools.nvim'
	use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
	use 'hrsh7th/nvim-cmp' 
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'
	use 'voldikss/vim-floaterm'
	use 'windwp/nvim-autopairs'
	-- use 'xiyaowong/transparent.nvim'
  
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
	  require('packer').sync()
	end
  end)
