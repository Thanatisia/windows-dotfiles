-- Place all your plugin manager and plugins here

--- Ensure that packer is installed
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    print("Installing packer close and reopen Neovim...")
end

---- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

---- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

---- Initialize Packer variables
local packer = require'packer'
local util = require'packer.util'

--- Initialize Packer
packer.init({
    display = {
      open_fn = function()
        -- return require('packer.util').float({ border = 'single' })
        return require('packer.util').float({ border = 'rounded' })
      end
    }
  }
)

--- Startup and add configure plugins
packer.startup(function(use)
	-- Add plugins here

    --- Packer package management itself
	use 'wbthomason/packer.nvim'

    --- General useful
    use 'rhysd/vim-grammarous' --- Grammar Checking
    use 'tpope/vim-vinegar' --- Lightweight File Browser for Neovim

    --- Quality of Life
    use 'folke/which-key.nvim' --- WhichKey Keymapping finder
    use {'romgrk/barbar.nvim', requires = {'kyazdani42/nvim-web-devicons'},} --- Neovim Tabline plugin
    use {'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons',}, tag = 'nightly',} --- NvimTree Tree File Explorer for Neovim

    --- General Development
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',} --- Integrates the tree-sitter library for incremental parsing of buffers
    use 'andymass/vim-matchup' --- Matching parenthesis, brackets etc.
    use 'bronson/vim-trailing-whitespace' --- Highlight trailing spaces
    use 'scrooloose/nerdcommenter' -- Commenting shortcuts
    use 'tpope/vim-surround' --- Stylishly Surrounds highlighted string with a delimiter/character

    --- Git
    use 'tpope/vim-fugitive' -- Git commands
    use 'rhysd/git-messenger.vim' --- Shows the history of commits under the cursor in popup window
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'},} --- Git added/removed in sidebar + inline blame; aka changes made to files are represented

    --- Colorschemes
    use {'catppuccin/nvim', as = "catppuccin"}
    use 'marko-cerovac/material.nvim'
    use 'folke/tokyonight.nvim'
    use 'EdenEast/nightfox.nvim'

    --- Language Packs
    use 'sheerun/vim-polyglot'

    --- LSP Autocomplete
    use {'hrsh7th/nvim-cmp', 
        config = function()
            require'configurations.plugins.nvim-cmp'
        end
    } --- Neovim Lua LSP Autocompletion engine
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'

    --- Native LSP
    use {
        'neovim/nvim-lspconfig', --- Neovim Lua LSP integration configuration
        config = function()
            require'configurations.plugins.nvim-lspconfig'
        end
    }
    use 'glepnir/lspsaga.nvim' --- LSP plugin for highly performant UI features

    --- UNIX support
    use 'tpope/vim-eunuch' --- UNIX shell command wrapper

    --- Buffer Navigation/Status line/bar
    use 'vim-airline/vim-airline' --- Status bar
    use 'vim-airline/vim-airline-themes' --- Themes for the status bar/statusline 'vim-airline'

    --- Telescope Requirements/Dependencies
    use {'nvim-telescope/telescope.nvim', requires={{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},} -- Fuzzy file finder for Neovim written in Lua

    --- Telescope
    use 'nvim-telescope/telescope-fzf-native.nvim' --- FZF support for Telescope
    use {'nvim-telescope/telescope-file-browser.nvim', requires = {'nvim-lua/plenary.nvim'},} --- File Browser plugin for Telescope

    --- Snippets
    use 'L3MON4D3/LuaSnip'

    --- Dependencies
    use 'nvim-lua/popup.nvim' -- Popup for other plugins, usually a dependency
    use 'nvim-lua/plenary.nvim' -- Avoids callbacks, used by other plugins, usually a dependency
    use 'kyazdani42/nvim-web-devicons' -- Lua fork of vim-devicons, provides the same icons as well as colors for each icon, usually a dependency

    --- Wrappers
    use 'kassio/neoterm' --- Wrapper of some vim/neovim's :terminal functions

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require('packer').sync()
    end
end)

-- Sourcing configuration files

--- LSP and Autocompletion

--- Others

