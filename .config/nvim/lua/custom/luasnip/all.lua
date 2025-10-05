local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
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
ls.add_snippets('javascript', {
  s('clog', {
    t { 'console.log(' },
    i(0),
    t { ')' }
  }),
})
ls.filetype_extend("javascriptreact", { "javascript"})
ls.filetype_extend("typescript", { "javascript"})
ls.filetype_extend("typescriptreact", { "javascript"})
