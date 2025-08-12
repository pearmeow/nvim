-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.

-- NOTE: Plugins can also be added by using a table,
-- with the first argument being the link and the following
-- keys can be used to configure plugin behavior/loading/etc.
-- In all the lua file in the plugins directory, a table with
-- the arguments is returned
--
-- Use `opts = {}` to automatically pass options to a plugin's `setup()` function, forcing the plugin to be loaded.
--

require('lazy').setup({

  -- Indent lines
  require 'plugins.guess-indent',

  -- Git integration
  require 'plugins.gitsigns',

  -- Reminder for key maps and what they do
  require 'plugins.which-key',

  -- Find files & other things easily
  require 'plugins.telescope',

  -- Lua LSP
  require 'plugins.lazydev',

  -- LSPs
  require 'plugins.lspconfig',

  -- Autoformat
  require 'plugins.conform',

  -- Autocompletion
  require 'plugins.blink-cmp',

  -- Color Scheme
  require 'plugins.tokyonight',

  -- Highlight todo, notes, etc in comments
  require 'plugins.todo-comments',

  -- Collection of various small independent plugins/modules
  require 'plugins.mini',

  -- Highlight, edit, and navigate code
  require 'plugins.treesitter',

  -- Filetree with shortcut
  require 'plugins.neo-tree',

  -- Pair parens & brackets
  require 'plugins.autopairs',

  -- Pair html tags and jsx
  require 'plugins.autotag',

  -- Visible indentation lines
  require 'plugins.indent_line',

  -- Animated cursor + smear trail
  require 'plugins.smear-cursor',

  -- Discord rich presence
  require 'plugins.presence',

  -- Linting
  require 'plugins.lint',

  -- Undo tree
  require 'plugins.undotree',

  -- Git integration
  require 'plugins.fugitive',

  -- Sneak motion
  require 'plugins.sneak',

  -- Surround motion
  require 'plugins.surround',

  -- Repeat sneak and surround
  require 'plugins.repeat',

  -- Tab out of parens and other similar syntax
  require 'plugins.neotab',

  -- Tab out of parens and other similar syntax
  -- require 'plugins.tabout',

  -- Debug adapter protocol
  -- require 'plugins.debug',

  -- For additional information with loading, sourcing and examples see `:help lazy.nvim-🔌-plugin-spec`
  -- Or use telescope!
  -- In normal mode type `<space>sh` then write `lazy.nvim-plugin`
  -- you can continue same window with `<space>sr` which resumes last telescope search
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
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
