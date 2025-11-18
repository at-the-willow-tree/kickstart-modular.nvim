vim.opt.laststatus = 3
vim.opt.guifont = 'Iosevka Nerd Font'
return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      globalstatus = true,
    },
  },
}
