return {
    {
        'lewis6991/gitsigns.nvim',
        opts = {
            on_attach = function(bufnr)
                local gitsigns = require 'gitsigns'

                local function map(mode, l, r, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    vim.keymap.set(mode, l, r, opts)
                end

                -- Navigation
                map('n', '<leader>hn', function()
                    if not vim.wo.diff then
                        gitsigns.nav_hunk 'next'
                    end
                end, { desc = 'Jump to [n]ext [h]unk' })

                map('n', '<leader>hp', function()
                    if not vim.wo.diff then
                        gitsigns.nav_hunk 'prev'
                    end
                end, { desc = 'Jump to [p]revious [h]unk' })

                -- Action

                -- Visual mode
                map('v', '<leader>hs', function()
                    gitsigns.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
                end, { desc = 'git [s]tage hunk' })
                map('v', '<leader>hr', function()
                    gitsigns.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
                end, { desc = 'git [r]eset hunk' })

                -- Normal mode
                map('n', '<leader>hs', gitsigns.stage_hunk, { desc = 'git [s]tage hunk' })
                map('n', '<leader>hu', gitsigns.undo_stage_hunk, { desc = 'git [u]ndo stage hunk' })
                map('n', '<leader>hr', gitsigns.reset_hunk, { desc = 'git [r]eset hunk' })

                map('n', '<leader>hS', gitsigns.stage_buffer, { desc = 'git [S]tage buffer' })
                map('n', '<leader>hR', gitsigns.reset_buffer, { desc = 'git [R]eset buffer' })

                map('n', '<leader>hd', gitsigns.diffthis, { desc = 'git [d]iff against index' })
                map('n', '<leader>hD', function()
                    gitsigns.diffthis '@'
                end, { desc = 'git [D]iff against last commit' })
            end,
        },
    },
}
