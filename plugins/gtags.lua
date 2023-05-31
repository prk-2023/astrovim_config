-- code highligher
return {
  "ivechan/gtags.vim",
  opts = {},
  event = { "User AstroFile" },
  cmd = { "Gtags" },
  keys = {  },
  config = function () 
      -- use a some pacage as requirement for tagbar for setup (choosing aerial)
      require ('aerial').setup()
  end,
}
