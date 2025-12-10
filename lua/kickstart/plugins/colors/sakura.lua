return {
  'anAcc22/sakura.nvim',
  dependencies = 'rktjmp/lush.nvim',
  config = function()
    vim.g.sakura = {
      transparent_background = true,
    }
    vim.opt.background = 'dark' -- or "light"
    vim.cmd 'colorscheme sakura' -- sets the colorscheme
    vim.cmd 'highlight Normal guibg=none'
  end,
}
