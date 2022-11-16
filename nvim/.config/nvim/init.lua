--[[ init.lua ]]


-- LEADER
-- These keybindings need to be defined before the first / 
-- is called; otherwise, it will default to "\"
vim.g.localleader = " "
vim.g.mapleader = "," 

-- Settings for NvimTree
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1
--vim.opt.termguicolors = true 

-- IMPORTS
require('keys') -- Keymaps
require('vars') -- Variables
require('plug') -- Plugins
require('opts') -- Options
require('lsp_config') -- LSP Config
require('autopairs-config')
require('whichkey-config')
require('cmp-config')

 -- PLUGINS
require('onedark').load()
require('mason').setup()
require('mason-lspconfig').setup()
require('nvim-tree').setup()
require('which-key').setup()
require('lualine').setup() 
