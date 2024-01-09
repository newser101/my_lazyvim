local ls = require("luasnip")

ls.add_snippets("sh", {

  s({ trig = "shebang" }, {
    t({ "#!/bin/bash\n" }),
  }),
})
