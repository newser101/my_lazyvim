-- local ls = require("luasnip")
-- local s = ls.snippet
-- local i = ls.insert_node
-- local t = ls.text_node

-- ls.add_snippets("lua", {
return {
  s("trig", {
    t("lua snippet loaded"),
  }),

  -- snippet snippet
  s("snippet", {
    t('s("'),
    i(1, "trigger"),
    t({ '", {', "" }),
    i(0),
    t({ "", "})," }),
  }),
}

-- }
