return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    opts = {
      input = { enabled = true },
      notifier = { enabled = true },
      notify = { enabled = true },
      rename = { enabled = true },
      statuscolumn = { enabled = true },
      zen = { enabled = true, toggles = { dim = false } },
      picker = { enabled = true },
      scratch = {
        enabled = true,
      },
      dashboard = {
        enabled = true,
        preset = {
          pick = 'telescope.nvim',
          keys = {
            { icon = ' ', key = 'f', desc = 'Find File', action = '<leader>ff' },
            { icon = ' ', key = 'n', desc = 'New File', action = ':ene | startinsert' },
            { icon = ' ', key = 'g', desc = 'Find Text', action = '<leader>sG' },
            { icon = ' ', key = 'r', desc = 'Recent Files', action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = ' ', key = 'c', desc = 'Config', action = '<leader>fn' },
            { icon = ' ', key = 's', desc = 'Restore Session', section = 'session' },
            { icon = '󰒲 ', key = 'L', desc = 'Lazy', action = ':Lazy', enabled = package.loaded.lazy ~= nil },
            { icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
          },
        },
      },
    },
    keys = {
      {
        '<leader>uz',
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
      {
        '<leader>.',
        function()
          Snacks.scratch()
        end,
        desc = 'Toggle Scratch Buffer',
      },
      {
        '<leader>fs',
        function()
          Snacks.scratch.select()
        end,
        desc = 'Select Scratch Buffer',
      },
    },
  },
}
