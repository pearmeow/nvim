-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.api.nvim_create_autocmd({ 'InsertEnter' }, {
  group = vim.api.nvim_create_augroup('diagnostics', { clear = true }),
  callback = function()
    vim.diagnostic.hide()
  end,
})

-- ejs
local ejs_group = vim.api.nvim_create_augroup('ejs', { clear = true })
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
  group = ejs_group,
  pattern = {
    '*.ejs',
  },
  command = 'set ft=html',
})

-- Templates
local template_group = vim.api.nvim_create_augroup('templates', { clear = true })
vim.api.nvim_create_autocmd({ 'BufNewFile' }, {
  group = template_group,
  pattern = {
    '*.cpp',
    '*.c',
    '*.h',
  },
  command = '0read ~/templates/skeleton.cpp',
})
