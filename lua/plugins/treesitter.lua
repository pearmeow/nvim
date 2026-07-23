return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = function()
    local TS = require 'nvim-treesitter'
    TS.update()
    TS.install { 'c', 'cpp', 'javascript', 'prisma', 'gitcommit' }
  end,
}
