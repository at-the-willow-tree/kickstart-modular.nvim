return {
  {
    'norcalli/nvim-colorizer.lua',
    opts = {
      '*',
      css = { rgb_fn = true, RRGGBBAA = true },
      scss = { rgb_fn = true, RRGGBBAA = true },
      html = { mode = 'foreground', names = false },
    },
  },
}
