return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      input = { enabled = true },
      notifier = { enabled = true },
      rename = { enabled = true },
      statuscolumn = { enabled = true },
      zen = { enabled = true },
      picker = { enabled = true },
      dashboard = {
        enabled = true,
        preset = {
          pick = 'telescope.nvim',
        },
      },
    },
    keys = {
      {
        '<leader>z',
        function()
          Snacks.zen()
        end,
        desc = 'Toggle Zen Mode',
      },
      {
        '<leader>n',
        function()
          Snacks.notifier.show_history()
        end,
        desc = 'Notification History',
      },
    },
  },
}
