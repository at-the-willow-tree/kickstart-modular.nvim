vim.api.nvim_create_user_command('FormatToggle', function()
  vim.g.disable_autoformat = not vim.g.disable_autoformat
  if vim.g.disable_autoformat then
    vim.notify 'Autoformat-on-save disabled'
  else
    vim.notify 'Autoformat-on-save enabled'
  end
end, { desc = 'Toggle autoformat on save' })

vim.keymap.set('n', '<leader>uf', ':FormatToggle<cr>', { silent = true, desc = 'Toggle autoformat on save' })

return {
  { -- Autoformat
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>cF',
        function()
          require('conform').format { async = true, lsp_format = 'fallback' }
        end,
        mode = '',
        desc = '[F]ormat buffer/selection',
      },
    },
    opts = {
      notify_on_error = true,
      log_level = vim.log.levels.DEBUG,
      format_on_save = function(bufnr)
        if vim.g.disable_autoformat then
          return
        end
        -- Disable "format_on_save lsp_fallback" for languages that don't
        -- have a well standardized coding style. You can add additional
        -- languages here or re-enable it for the disabled ones.
        local disable_filetypes = { c = true, cpp = true }
        if disable_filetypes[vim.bo[bufnr].filetype] then
          return nil
        else
          return {
            timeout_ms = 500,
            lsp_format = 'fallback',
          }
        end
      end,
      formatters_by_ft = {
        lua = { 'stylua' },
        -- Conform can also run multiple formatters sequentially
        -- python = { "isort", "black" },
        --
        -- You can use 'stop_after_first' to run the first available formatter from the list
        javascript = { 'prettierd' },
        -- typescript = { 'prettierd', 'eslint_d' },
        typescript = { 'prettierd' },
        css = { 'prettierd', 'prettier' },
        scss = { 'prettierd', 'prettier' },
        html = { 'prettierd', 'prettier' },
        htmlangular = { 'prettierd' },
        json = { 'prettierd', 'prettier' },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
