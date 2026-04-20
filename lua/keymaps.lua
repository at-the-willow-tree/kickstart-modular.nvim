-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', '<leader>uw', ':set wrap!<CR>', { desc = 'Toggle line wrap', silent = true })

vim.keymap.set('n', '<C-h>', '<cmd>vertical resize -10<cr>', { desc = 'Increase window width', silent = true })
vim.keymap.set('n', '<C-l>', '<cmd>vertical resize +10<cr>', { desc = 'Decrease window width', silent = true })
vim.keymap.set('n', '<C-j>', '<cmd>resize -10<cr>', { desc = 'Decrease window height', silent = true })
vim.keymap.set('n', '<C-k>', '<cmd>resize +10<cr>', { desc = 'Increase window height', silent = true })

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
