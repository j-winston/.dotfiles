--[[ init.lua ]]


-- Disable netrw 
vim.g.loaded_netrw = 1 
vim.g.loaded_netrwPlugin = 1 


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
require('onedark').setup()  

-- Lua
require('mason').setup()
require('mason-lspconfig').setup()
require('nvim-tree').setup()
require('which-key').setup()

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
