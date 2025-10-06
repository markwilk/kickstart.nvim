-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- No need for status line in NvimTree window
vim.api.nvim_create_autocmd('Filetype', {
  desc = 'Hide status line in NvimTree',
  callback = function(args)
    local ft = vim.bo[args.buf].filetype
    if ft == 'NvimTree' then
      vim.b[args.buf].ministatusline_disable = true
    end
  end,
})
