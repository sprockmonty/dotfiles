return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    vim.keymap.set({ 'n', 'v' }, '<LocalLeader>a', '<cmd>CodeCompanion<cr>/buffer ', { noremap = true, silent = true })
    vim.keymap.set({ 'n', 'v', 'i' }, '<C-c>', '<cmd>CodeCompanion /buffer suggest<cr>', { noremap = true, silent = true })
    vim.keymap.set({ 'n', 'v' }, '<C-e>', '<cmd>CodeCompanion /buffer explain<cr>', { noremap = true, silent = true })

    require('codecompanion').setup {
      adapters = {
        gemini = function()
          return require('codecompanion.adapters').extend('gemini', {
            schema = {
              model = {
                default = 'gemini-2.0-pro-exp-02-05',
              },
            },
            env = {
              api_key = 'replace-me-with-key',
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = 'gemini',
        },
        inline = {
          adapter = 'gemini',
        },
      },
    }
  end,
}
