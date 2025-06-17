--[[
    If you don't know anything about Lua, I recommend taking some time to read through
    a guide. One possible example which will only take 10-15 minutes:
    - https://learnxinyminutes.com/docs/lua/

    After understanding a bit more about Lua, you can use `:help lua-guide` as a
    reference for how Neovim integrates Lua.
    - :help lua-guide
    - (or HTML version): https://neovim.io/doc/user/lua-guide.html

    Next, run AND READ `:help`.
    This will open up a help window with some basic information
    about reading, navigating and searching the builtin help documentation.

    This should be the first place you go to look when you're stuck or confused
    with something. It's one of my favorite Neovim features.

    MOST IMPORTANTLY, we provide a keymap "<space>sh" to [s]earch the [h]elp documentation,
    which is very useful when you're not exactly sure of what you're looking for.

    If you experience any errors while trying to install kickstart, run `:checkhealth` for more info.
--]]

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
-- Current nerd font is part of the JetBrains family
vim.g.have_nerd_font = true

-- Require looks inside the lua folder for paths so including
-- lua before options would imply lua/lua/options.lua exists
-- which is incorrect. Also, don't include .lua at the end of the
-- filename because it is implied.

-- Load options.lua file in lua directory
require 'options'

-- Load keymaps.lua file in lua directory
-- Adds basic keymaps like <C-h> to move in split windows
require 'keymaps'

-- Load lazy-bootstrap.lua file in lua directory
-- Makes lazy.nvim work
require 'lazy-bootstrap'

-- Load lazy-plugins.lua file in lua directory
-- Makes Lazy set up plugins depending on their options in the plugins folder
require 'lazy-plugins'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
