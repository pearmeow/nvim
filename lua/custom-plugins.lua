-- [[ Configure and install plugins ]]

require('lazy').setup({

  require 'plugins.guess-indent', -- Indent lines
  require 'plugins.gitsigns', -- Git integration
  require 'plugins.which-key', -- Reminder for key maps and what they do
  require 'plugins.telescope', -- Find files & other things easily
  require 'plugins.lazydev', -- Lua LSP
  require 'plugins.lspconfig', -- LSPs
  require 'plugins.conform', -- Autoformat
  require 'plugins.blink-cmp', -- Autocompletion
  require 'plugins.tokyonight', -- Color scheme
  require 'plugins.todo-comments', -- Highlight todo, notes, etc in comments
  require 'plugins.mini', -- Collection of various small plugins/modules
  require 'plugins.treesitter', -- Highlight, edit, and navigate code
  require 'plugins.neo-tree', -- Filetree with shortcut
  require 'plugins.autopairs', -- Pair parens and brackets
  require 'plugins.autotag', -- Pair html tags and jsx
  require 'plugins.indent_line', -- Visible indentation lines
  require 'plugins.presence', -- Discord rich presence
  require 'plugins.lint', -- Linting
  require 'plugins.undotree', -- Undo tree
  require 'plugins.fugitive', -- Git integration
  require 'plugins.sneak', -- Sneak motion
  require 'plugins.surround', -- Surround motion
  require 'plugins.repeat', -- Repeat sneak and surround
  require 'plugins.neotab', -- Tab out of parens and other similar syntax
  require 'plugins.context',

  -- require 'plugins.tabout', -- Tab out of parens and other similar syntax
  -- require 'plugins.debug', -- Debug adapter protocol
}, {
  ui = {
    -- If using Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
