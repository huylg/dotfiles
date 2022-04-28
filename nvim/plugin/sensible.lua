vim.cmd([[
  autocmd FileType qf wincmd J
  packadd cfilter
]])

vim.o.completeopt='menu,menuone,noselect'
vim.o.mouse='a'
vim.o.clipboard='unnamedplus'
vim.o.number=true
vim.o.relativenumber=true
vim.o.smartindent=true
vim.o.cursorline = true
vim.o.cursorcolumn = true
vim.wo.colorcolumn='80'
vim.o.ignorecase = true
vim.o.smartcase = true


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

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- color scheme
require'vscode_setup'

