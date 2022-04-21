vim.cmd([[
  autocmd FileType qf wincmd J
  packadd cfilter
  set clipboard+=unnamedplus
]])

vim.o.completeopt='menu,menuone,noselect'
vim.o.mouse='a'
vim.o.clipboard='unnamed'
vim.o.number=true
vim.o.relativenumber=true
vim.o.smartindent=true
vim.o.cursorline = true
vim.o.cursorcolumn = true
vim.wo.colorcolumn='80'


local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('i','<C-b>','<left>',opts)
vim.api.nvim_set_keymap('i','<C-f>','<right>',opts)

vim.api.nvim_set_keymap('n','<space>s',':update<CR>',opts)

vim.api.nvim_set_keymap('n','<space>co',':copen<CR>',opts)
vim.api.nvim_set_keymap('n','<space>cc',':ccl<CR>',opts)
vim.api.nvim_set_keymap('n','<space>cl',':cli<CR>',opts)

vim.api.nvim_set_keymap('n', '<space>lo',':lopen<CR>',opts)
vim.api.nvim_set_keymap('n', '<space>lc',':lcl<CR>',opts)
vim.api.nvim_set_keymap('n', '<space>ll',':lli<CR>',opts)

vim.api.nvim_set_keymap('t', '<Esc>','<C-\\><C-n>',opts)


-- color scheme
-- require'vscode_setup'
vim.cmd [[  
  colorscheme dracula 
  hi! CursorLine gui=underline cterm=underline guibg=none
  hi CursorLineNr guibg=NONE
]]
