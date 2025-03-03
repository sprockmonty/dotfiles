return {
  'ThePrimeagen/refactoring.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  lazy = false,
  config = function()
    require('refactoring').setup {}
    vim.keymap.set('x', '<leader>r', ':Refactor extract ', { desc = '[R]efactor code' })
  end,
}
