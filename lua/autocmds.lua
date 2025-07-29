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

-- For now there is only an autocommand for cpp templates
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
