vim.keymap.set('n', '<leader>cS', ':AerialToggle<cr>', { silent = true, desc = 'Toggle Outline' })

return {
  {
    'stevearc/aerial.nvim',
    opts = {
      backends = { 'treesitter', 'lsp' },
      layout = {
        max_width = { 40, 0.2 },
        min_width = 10,
      },
    },
  },
}
