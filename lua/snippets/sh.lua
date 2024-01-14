local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

ls.add_snippets("sh", {
  s("trig", {
    t("sh snippets loaded"),
  }),

  s("shebang", {
    t({ "#!/bin/bash", "" }),
  }),
})
