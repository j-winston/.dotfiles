--[[ opts.lua ]]
local opt = vim.opt
local cmd = vim.api.nvim_command

-- [[ Context ]] 
opt.colorcolumn = '80'		-- str: Show col for max 
opt.number = true 		-- bool: Show line numbers
opt.relativenumber = true	-- bool: Show relative line numbers				
opt.scrolloff = 999		-- int: Min num lines of context
opt.signcolumn = "yes"		-- str: Show the sign column
opt.hlsearch = false

-- [[ Filetypes ]]
opt.encoding = 'utf8'		-- str: String encoding
opt.fileencoding = 'utf8'	-- str: File encoding to use


-- [[ Theme ]]
opt.syntax = "ON"		-- str Allow syntax highlighting
opt. termguicolors = true	-- bool: If term supports ui colors

-- [[ Search ]] 
opt.ignorecase = true		-- bool: Ignore case in search
opt.smartcase = true 		-- bool: Override ignorecase
opt.incsearch = true 		-- bool: Use incremental search

-- [[ Whitespace ]] 
opt.expandtab = true 		-- bool: Use spaces instead of tab
opt.shiftwidth = 4 		-- num: Size of an indent
opt.softtabstop = 4		-- num: Number of spaces tab counts for in insert mode
opt.tabstop = 4			-- num: Number of spaces tabs count for  

-- [[ Splits ]] 
opt.splitright = true		-- bool: Place new window to right of current one
opt.splitbelow = true		-- bool: Place new window below the current one 

-- [[ Timeout length ]] 
opt.timeoutlen = 100 
