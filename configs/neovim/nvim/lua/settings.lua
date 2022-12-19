--- Neovim Lua Settings
-- [Definitions]
-- vim.g = Vim global variables
-- vim.o = vim.opt = Vim Options
-- vim.cmd = Vim commands

HOME = os.getenv("HOME")

-- Global Variables
vim.g.mapleader = "," -- variable represents <leader>
vim.g.maplocalleader = "\\"

-- Basic Settings
vim.o.encoding = "utf-8" -- Set an encoding format
vim.o.backspace = "indent,eol,start" -- Backspace works on every character in insert mode
vim.opt.completeopt={"menu", "menuone", "noselect"} -- Setting completion values; Default: vim.o.completeopt = 'menuone,noselect'


-- Operation and Movements
vim.o.mouse = "a" -- Set Mouse
vim.o.clipboard = 'unnamedplus' -- Set Clipboard Manager
vim.o.scrolloff = 8 -- Set number of spaces before the screen moves vertically
vim.o.sidescrolloff = 8 -- Set number of spaces before the screen moves horizontally

-- Display
vim.o.showmatch = true --- Show matching brackets
vim.o.laststatus = 2 --- Always show status line
vim.o.list = false --- Do not display white characters
vim.o.wrap = false --- Do not wrap lines if goes over the screen (similar to :set nowrap)
vim.o.showbreak = "↪" --- Show the assigned icon where a line break is found
vim.o.cursorline = true --- Enable Cursor Line Highlighting
vim.o.cursorcolumn = true --- Enable Cursor Column Highlighting
vim.o.showtabline = 2 --- Always show tabs

-- Command Line/Bar
vim.o.cmdheight = 2 -- Set amount of space in the neovim command line; for displaying messages

-- Sidebar
vim.o.number = true --- Show line number on the left (similar to :set number)
vim.o.relativenumber = true --- Show relative line numbers (similar to :set relativenumber)
vim.o.showcmd = true --- Display commands in bottom bar

-- Searches
vim.o.incsearch = true --- Incremental Search; starts searching as soon as you type anything, without enter needed
vim.o.ignorecase = true --- Ignore case sensitivity when searching
vim.o.smartcase = true --- case insensitive unless capitals are specified in the search pattern.

-- Whitespaces
vim.o.autoindent = true --- Enable Autoindent
vim.o.smartindent = true --- Enable Smart indenting
vim.o.expandtab = true --- Expand tabs into spaces
vim.o.tabstop = 4 --- Set 1 tab = n spaces
vim.o.shiftwidth = 4 --- Indentation Rules

-- Backup files
vim.o.writebackup = false --- Write backup to a file
vim.o.swapfile = false --- Disable swapfiles
vim.o.undofile = false --- Enable persistent undo

-- Background and Colorschemes
vim.o.background = 'dark' --- Set Background color (light|dark)
vim.o.termguicolors = true --- Set to use terminal gui colors
---vim.cmd[[colorscheme tokyonight-storm]]
---vim.cmd[[colorscheme duskfox]]
vim.api.nvim_command "colorscheme catppuccin"


