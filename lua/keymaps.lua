-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<leader>uw', ':set wrap!<CR>', { desc = 'Toggle line wrap', silent = true })

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Remove relative line numbers in insert mode
vim.api.nvim_create_autocmd('InsertEnter', {
  pattern = '*',
  command = 'set number norelativenumber',
})

vim.api.nvim_create_autocmd('InsertLeave', {
  pattern = '*',
  command = 'set number relativenumber',
})

local opts = { noremap = true, silent = true }

local function quickfix()
  vim.lsp.buf.code_action {
    filter = function(a)
      return a.isPreferred
    end,
    apply = true,
  }
end

vim.keymap.set('n', '<leader>qf', quickfix, opts)

-- vim: ts=2 sts=2 sw=2 et
