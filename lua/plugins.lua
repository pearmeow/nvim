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
  require 'plugins.smear-cursor', -- Animated cursor + smear trail
  require 'plugins.presence', -- Discord rich presence
  require 'plugins.lint', -- Linting
  require 'plugins.undotree', -- Undo tree
  require 'plugins.fugitive', -- Git integration
  require 'plugins.sneak', -- Sneak motion
  require 'plugins.surround', -- Surround motion
  require 'plugins.repeat', -- Repeat sneak and surround
  require 'plugins.neotab', -- Tab out of parens and other similar syntax

  -- require 'plugins.tabout', -- Tab out of parens and other similar syntax

  -- require 'plugins.debug', -- Debug adapter protocol

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
