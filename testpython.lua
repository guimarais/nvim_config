-- Generated with ChatGPT, prompt:
-- Write a neovim configuration file that autocompletes python code using the lua language, please.
-- Use Python syntax highlighting for all .py files
vim.cmd('autocmd BufRead,BufNewFile *.py set filetype=python')

-- Set the path to the Python interpreter and the virtual environment
vim.g.python3_host_prog = '/path/to/python/interpreter'
vim.g.python3_host_prog = '/path/to/virtual/environment/bin/python'

-- Enable filetype-specific indentation and syntax highlighting
vim.cmd('filetype plugin indent on')
vim.cmd('syntax enable')

-- Enable autocompletion using the 'omnifunc' function
vim.o.omnifunc = 'pythoncomplete#Complete'

-- Map the <Tab> key to trigger autocompletion
vim.api.nvim_set_keymap('i', '<Tab>', '<C-x><C-o>', { noremap = true })
