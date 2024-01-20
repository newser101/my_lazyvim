local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node

-- ls.add_snippets({ trig = "sh", priority = 2000 }, {
ls.add_snippets("sh", {

  s("trig", {
    t("sh snippets loaded"),
  }),

  -- s({ trig = "shebang", priority = 2000 }, {
  --   t({ "#!/bin/bash", "" }),
  -- }),

  -- s("shebang", {
  --   t({ "#!/bin/bash", "" }),
  -- }),

  s({ trig = "shebang", priority = 1500 }, {
    t({ "#!/bin/bash", "" }),
  }),

  -- testing snippets
  -- insert_node
  s("insertnode", {
    t({ "First line " }),
    i(1),
    t({ " " }),
    i(2, "editable"),
    t(" :: "),
    i(3, "also"),
    t({ "", "newline", "" }),
    i(0, "End"),
  }),
})
