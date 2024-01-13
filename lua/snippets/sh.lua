local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

ls.add_snippets("sh", {

  s("trigger", {
    i(1),
    t("text"),
    i(2),
    t("text again"),
    i(3),
  }),

  s("triggernew_line", {
    t({ "first line", "next line" }),
  }),

  s("snippet", {
    t('s("")'),
  }),
})
