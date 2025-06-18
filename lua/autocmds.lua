-- Autocommands go here
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
