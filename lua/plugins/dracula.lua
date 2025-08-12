return {
  'Mofiqul/dracula.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    require('dracula').setup {}
    vim.cmd.colorscheme 'dracula'
  end,
}
