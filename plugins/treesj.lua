return {
  "Wansmer/treesj",
  cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = { use_default_keymaps = true },
  keys = { "<space>m", "<CMD>TSJToggle<CR>", desc = "toggle treesitter join" },
  -- config = function()
  -- require("treesj").setup { --[[ your config ]]
  -- }
  -- end,
}
