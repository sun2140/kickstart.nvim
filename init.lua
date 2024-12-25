--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

require 'options'

require 'keymap'

require 'autocmd'

require 'lazy-bootstrap'

require 'lazy-plugins'
