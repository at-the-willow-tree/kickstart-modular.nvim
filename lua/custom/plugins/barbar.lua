vim.keymap.set('n', 'Q', ':w|BufferClose<cr>', { silent = true, desc = 'Save and close buffer' })
vim.keymap.set('n', '<leader>bd', ':BufferClose<cr>', { silent = true, desc = 'Close buffer' })
vim.keymap.set('n', '<leader>br', ':BufferRestore<cr>', { silent = true, desc = 'Restore buffer' })
vim.keymap.set('n', '<leader>bp', ':BufferPin<cr>', { silent = true, desc = 'Pin buffer' })
vim.keymap.set('n', '<leader>bc', ':BufferPick<cr>', { silent = true, desc = 'Choose buffer' })
vim.keymap.set('n', '[b', ':BufferPrevious<cr>', { silent = true, desc = 'Previous buffer' })
vim.keymap.set('n', ']b', ':BufferNext<cr>', { silent = true, desc = 'Next buffer' })
vim.keymap.set('n', '<leader>bl', ':BufferCloseBuffersRight<cr>', { silent = true, desc = 'Close buffers to the right' })
vim.keymap.set('n', '<leader>bh', ':BufferCloseBuffersLeft<cr>', { silent = true, desc = 'Close buffers to the left' })

return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    init = function()
      vim.g.barbar_auto_setuo = false
    end,
    opts = {
      animation = true,
      icons = {
        diagnostics = {
          [vim.diagnostic.severity.ERROR] = { enabled = true, icon = '' },
          [vim.diagnostic.severity.WARN] = { enabled = true, icon = '' },
          [vim.diagnostic.severity.INFO] = { enabled = false },
          [vim.diagnostic.severity.HINT] = { enabled = true },
        },
        gitsigns = {
          added = { enabled = true, icon = '+' },
          changed = { enabled = true, icon = '~' },
          deleted = { enabled = true, icon = '-' },
        },
        modified = { button = '●' },
        pinned = { button = '', filename = true },
        current = { buffer_index = true },
      },
      sidebar_filetypes = {
        NvimTree = true,
        Outline = true,
      },
    },
  },
}
