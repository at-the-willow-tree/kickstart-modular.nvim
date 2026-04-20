return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'zenbones-theme/zenbones.nvim',
    dependencies = 'rktjmp/lush.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      vim.g.zenbones = {
        darken_cursor_line = 2,
        lighten_cursor_line = 2,
      }
      vim.g.kanagawabones = {
        transparent_background = true,
        darken_cursor_line = 2,
        lighten_cursor_line = 2,
      }
      vim.g.zenwritten = {
        transparent_background = true,
        darken_cursor_line = 2,
        lighten_cursor_line = 2,
      }
      vim.g.rosebones = {
        transparent_background = true,
        darken_cursor_line = 1,
        lighten_cursor_line = 1,
      }
      vim.g.seoulbones = {
        transparent_background = true,
        darken_cursor_line = 2,
        lighten_cursor_line = 2,
      }
      vim.g.vimbones = {
        darken_cursor_line = 2,
        lighten_cursor_line = 2,
      }
      vim.g.forestbones = {
        transparent_background = true,
        darken_cursor_line = 2,
        lighten_cursor_line = 2,
      }
      vim.g.duckbones = {
        transparent_background = true,
        darken_cursor_line = 2,
        lighten_cursor_line = 2,
      }

      vim.cmd 'colorscheme kanagawabones'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
