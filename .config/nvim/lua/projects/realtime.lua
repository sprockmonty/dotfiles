vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = '*/ndavey-dev/*',
  command = '!cdcsync &',
})
