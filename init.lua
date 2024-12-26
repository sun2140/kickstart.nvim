--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

require 'neovim.configuration.vim-options'
require 'neovim.configuration.keymap'
require 'lazy-bootstrap'
require 'lazy-plugins'
require 'neovim.automation.autocmd'
require 'neovim.configuration.health-check'
