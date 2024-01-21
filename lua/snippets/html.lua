return {
  s("trig", {
    t("html snippet loaded!!"),
  }),

  s({ trig = "doctype", priority = 1500 }, {
    t({ "<!doctype html>", "" }),
  }),

  --     <link href="" rel="stylesheet">
  --   </head>
  --   <body>
  --
  --   </body>
  -- </html>
  s({ trig = "html5", priority = 1500, desc = "core html body to start", name = "core html" }, {
    t({ "<!doctype html>", '<html lang="' }),
    i(1, "en"),
    t({ '">', "<head>", "<title>" }),
    i(2, "title"),
    t({
      "</title>",
      '<meta charset="UTF-8">',
      '<meta name="viewport" content="width=device-width, initial-scale=1">',
      '<link href="',
    }),
    i(3, "css/style.css"),
    t({ '" rel="stylesheet">', "</head>", "<body>", "" }),
    i(0),
    t({ "", "</body>", "</html>", "" }),
  }),
}
