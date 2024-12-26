--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

require 'nvim.vim-options'
require 'nvim.keymap'
require 'nvim.health-check'

require 'lazy-bootstrap'
require 'lazy-plugins'

--  NOTE: Must happen after everything to avoid undefined function being called
require 'nvim.autocmd'
