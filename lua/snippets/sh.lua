local ls = require("luasnip")
local s = ls.snippet
-- local i = ls.insert_node
local t = ls.text_node
-- local f = ls.function_node
-- local fmt = require("luasnip.extras.fmt").fmt

-- ls.add_snippets({ trig = "sh", priority = 2000 }, {
ls.add_snippets("sh", {
  -- return {
  s("trig", {
    t("sh snippets loaded"),
  }),

  s({ trig = "shebang", priority = 1500 }, {
    t({ "#!/bin/bash", "" }),
  }),

  -- }
})
