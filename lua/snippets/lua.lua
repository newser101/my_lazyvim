local ls = require("luasnip")
local s = ls.snippet
local c = ls.choice_node
local d = ls.dynamic_node
local i = ls.insert_node
local t = ls.text_node
local sn = ls.snippet_node
local fmta = require("luasnip.extras.fmt").fmta
local rep = extras.rep

require("luasnip.session.snippet_collection").clear_snippets("lua")

ls.add_snippets("lua", {
  s("trig", {
    t("lua snippet 2 loaded"),
  }),
})
-- local isn = ls.indent_snippet_node
-- local f = ls.function_node
--local r = ls.restore_node
-- local events = require("luasnip.util.events")
-- local ai = require("luasnip.nodes.absolute_indexer")
-- local extras = require("luasnip.extras")
-- local l = extras.lambda
-- local p = extras.partial
-- local m = extras.match
-- local n = extras.nonempty
-- local dl = extras.dynamic_lambda
-- local fmt = require("luasnip.extras.fmt").fmt
-- local conds = require("luasnip.extras.expand_conditions")
-- local postfix = require("luasnip.extras.postfix").postfix
-- local types = require("luasnip.util.types")
-- local parse = require("luasnip.util.parser").parse_snippet
