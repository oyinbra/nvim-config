local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- To create a snippet, just use function s
ls.add_snippets("lua", {
	s("h", t("hello world")),
})

-- local name = 'value'
ls.add_snippets('lua', {
  s('var', {
    t('local '),
    i(1, 'name'),
    t(' = '),
    i(2, "'value'")
  })
})

