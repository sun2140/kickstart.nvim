require('lazy').setup({
    require 'plugins.autocompletion',
    require 'plugins.git',
    require 'plugins.mini',
    require 'plugins.theme',
    require 'plugins.treesitter',
    { import = 'plugins.formatting' },
    { import = 'plugins.languages-servers' },
    { import = 'plugins.navigation' },
    { import = 'plugins.visual-aid' },
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
