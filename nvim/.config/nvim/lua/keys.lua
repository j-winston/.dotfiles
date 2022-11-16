--[[ keys.lua ]] 
--
--
--
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '<Esc>', {})
map('i', 'kj', '<Esc>', {})

-- jump from window to window  
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

-- split windows 
map('n', '<C-v>', '<C-w>v', {noremap = true, silent = false})
map('n', '<C-s>', '<C-w>s', {noremap = true, silent = false})


-- convenience bindings 
map('n', '<Enter>', 'o<ESC>', {noremap = true, silent = false})
map('n', '<S-Enter>', 'O<ESC>', {noremap = true, silent = false}) 

map('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
map('n', '<leader>f', ':Telescope find_files<CR>', {noremap = true, silent = true})
