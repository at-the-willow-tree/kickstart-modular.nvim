vim.keymap.set({ 'n', 'x' }, 'p', '<Plug>(YankyPutAfter)')
vim.keymap.set({ 'n', 'x' }, 'P', '<Plug>(YankyPutBefore)')
vim.keymap.set('n', '<c-p>', '<Plug>(YankyPreviousEntry)')
vim.keymap.set('n', '<c-n>', '<Plug>(YankyNextEntry)')

return {
  {
    'gbprod/yanky.nvim',
    opts = {},
    dependencies = { 'folke/snacks.nvim' },
    keys = {
      {
        '<leader>p',
        ':Telescope yank_history<cr>',
        mode = { 'n', 'x' },
        desc = 'Open Yank History',
        silent = true,
      },
    },
  },
}
