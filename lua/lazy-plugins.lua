require('lazy').setup({
    require 'plugins.formatting.tabs-width',
    require 'plugins.git',
    require 'plugins.navigation.finder',
    require 'plugins.navigation.which-key',
    require 'plugins.languages-servers.lua',
    require 'plugins.languages-servers.luvit',
    require 'plugins.languages-servers.all-others-lsps',
    require 'plugins.autocompletion',
    require 'plugins.visual-aid.highlight-comment',
    require 'plugins.visual-aid.indent-line',
    require 'plugins.automation.formatting',
    require 'plugins.automation.autopairs',
    require 'plugins.themes.tokyonight',
    {
        'echasnovski/mini.nvim',
        version = '*',
        config = function()
            require('mini.ai').setup { n_lines = 500 }
            require('mini.operators').setup()
            require('mini.surround').setup()
            require('mini.icons').setup()
            require('mini.files').setup()

            vim.keymap.set('n', '<leader>e', function()
                MiniFiles.open()
            end, { desc = '[E]xplore filesystem' })

            local statusline = require 'mini.statusline'
            statusline.setup { use_icons = vim.g.have_nerd_font }

            ---@diagnostic disable-next-line: duplicate-set-field
            statusline.section_location = function()
                return '%2l:%-2v'
            end
        end,
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        main = 'nvim-treesitter.configs',
        opts = {
            ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = { 'ruby' },
            },
            indent = { enable = true, disable = { 'ruby' } },
        },
    },
}, {
    ui = {
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
