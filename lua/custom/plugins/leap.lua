vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap)')
vim.keymap.set('n', 'S', '<Plug>(leap-anywhere)')

return {
  {
    'https://codeberg.org/andyg/leap.nvim.git',
    opts = {
      preview = function(ch0, ch1, ch2)
        return not (ch1:match '%s' or (ch0:match '%a' and ch1:match '%a' and ch2:match '%a'))
      end,
    },
  },
}
