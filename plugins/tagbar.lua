-- code highligher
return {
  "preservim/tagbar",
  -- "majutsushi/tagbar",
  opts = {},
  event = { "User AstroFile" },
  cmd = { "TagbarToggle" },
  keys = {
    {
      "<F8>",
      -- "<cmd>:TagbarToggle :TagbarOpenAutoClose<CR>",
      "<cmd>:TagbarToggle<CR>",
      desc = "Show Tags",
    },
  },
  config = function () 
      -- use a some pacage as requirement for tagbar for setup (choosing aerial)
      require ('aerial').setup()
  end,
}
