return {
  'L3MON4D3/LuaSnip',
  -- follow latest release.
  version = 'v2.*', -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  -- install jsregexp (optional!).
  build = 'make install_jsregexp',
  config = function()
    local ls = require 'luasnip'
    local s = ls.snippet
    local t = ls.text_node
    -- go auto expand iferr.
    ls.add_snippets('go', {
      s('iferr', {
        t {
          'if err != nil {',
          '\treturn err',
          '}',
        },
      }),
    })
  end,
}
