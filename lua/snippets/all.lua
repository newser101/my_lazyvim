return {
  s("trig", t("loaded!!")),

  s({ trig = "(%d)", regTrig = true, docTrig = "3" }, {
    f(function(args, snip)
      return string.rep("repeatme ", tonumber(snip.captures[1]))
    end, {}),
  }),
}
