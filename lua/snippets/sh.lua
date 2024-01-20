-- local ls = require("luasnip")
-- local s = ls.snippet
-- local i = ls.insert_node
-- local t = ls.text_node
-- local f = ls.function_node
-- local fmt = require("luasnip.extras.fmt").fmt

local function fn(
  args, -- text from i(2) in this example i.e. { { "456" } }
  parent, -- parent snippet or parent node
  user_args -- user_args from opts.user_args
)
  return "[" .. args[1][1] .. user_args .. "]"
end

-- ls.add_snippets({ trig = "sh", priority = 2000 }, {
-- ls.add_snippets("sh", {
return {
  s("trig", {
    t("sh snippets loaded"),
  }),

  s({ trig = "shebang", priority = 1500 }, {
    t({ "#!/bin/bash", "" }),
  }),

  -- testing snippets
  -- test function note

  s("func12", {
    t({ "Test:", "" }),
    i(1),
    t({ "", "" }),
    i(2),
    t({ "", "Function output:", "" }),
    f(
      fn, -- callback (args, parent, user_args) -> string
      { 2 }, -- node indice(s) whose text is passed to fn, i.e. i(2)
      { user_args = { "user_args_value" } } -- opts
    ),
    i(0),
  }),
}
-- })
