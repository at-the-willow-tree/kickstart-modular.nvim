-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<leader>e', '<Cmd>Neotree<CR>', desc = 'NeoTree', silent = true },
  },
  opts = {
    close_if_last_window = false,
    enable_git_status = true,
    default_component_configs = {
      indent = {
        indent_size = 2,
        padding = 1,
        with_markers = true,
        indent_marker = '|',
        last_indent_marker = '└',
      },
    },
    git_status = {
      symbols = {
        -- Change type
        added = '✚',
        modified = '',
        deleted = '✖', -- this can only be used in the git_status source
        renamed = '󰁕', -- this can only be used in the git_status source
        -- Status type
        untracked = '',
        ignored = '',
        unstaged = '󰄱',
        staged = '',
        conflict = '',
      },
    },
    window = {
      position = 'left',
      width = 40,
      mapping_options = {
        noremap = true,
        nowait = true,
      },
      mappings = {
        ['<cr>'] = 'open',
        ['<esc>'] = 'cancel',
      },
    },
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
