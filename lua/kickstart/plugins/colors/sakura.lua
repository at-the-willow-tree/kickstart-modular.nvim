vim.api.nvim_create_autocmd('ColorScheme', {
  callback = vim.schedule_wrap(function(args)
    if args.match ~= 'sakura' then
      return
    end
    vim.cmd 'hi Normal guibg=none'
    vim.cmd 'hi BufferTabpageFill guibg=none'
    vim.cmd 'hi TabLineFill ctermbg=none'
    vim.cmd 'hi BufferDefaultCurrent guibg=none'
    vim.cmd 'hi BufferDefaultCurrentTarget guibg=none guifg=#d6c1c5'
    vim.cmd 'hi BufferDefaultCurrentMod guibg=none'
    vim.cmd 'hi BufferDefaultCurrentADDED guibg=none'
    vim.cmd 'hi BufferDefaultCurrentCHANGED guibg=none'
    vim.cmd 'hi BufferDefaultCurrentDELETED guibg=none'
    vim.cmd 'hi BufferDefaultCurrentERROR guibg=none'
    vim.cmd 'hi BufferDefaultInactive guibg=none guifg=#5a525b'
    vim.cmd 'hi BufferDefaultInactiveTarget guibg=none guifg=#d6c1c5'
    vim.cmd 'hi BufferDefaultInactiveSign guibg=none guifg=#d6c1c5'
    vim.cmd 'hi BufferDefaultInactiveMod guibg=none'
    vim.cmd 'hi BufferDefaultInactiveADDED guibg=none'
    vim.cmd 'hi BufferDefaultInactiveCHANGED guibg=none'
    vim.cmd 'hi BufferDefaultInactiveDELETED guibg=none'
    vim.cmd 'hi BufferDefaultInactiveERROR guibg=none'
  end),
  group = vim.api.nvim_create_augroup('Sakura Barbar', {}),
})

return {
  'anAcc22/sakura.nvim',
  dependencies = 'rktjmp/lush.nvim',
  config = function()
    vim.opt.background = 'dark' -- or "light"
    vim.cmd 'colorscheme sakura' -- sets the colorscheme
  end,
}
