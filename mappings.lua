-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
--
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },

    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- disable/enable mouse
    ["<leader>a"] = { ":set mouse-=a<CR>", desc = "Disable Mouse" },
    ["<leader>A"] = { ":set mouse=a<CR>", desc = "Enable Mouse" },

    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- ["<leader>a"] = { "<cmd>echo 'hello world!'<cr>", desc = "Say hello greetings" },
    ["<leader><F8>"] = { "<cmd>AerialToggle<cr>", desc = "Open-Close Aerial" }, -- already exists : <leader>lS
    ["<leader>,"] = { ":GtagsCursor<CR>", desc = "Gtag Cursor" },
    ["<leader>x"] = { ":Gtags -x", desc = "Gtag -x" },
    ["<leader>s"] = { ":Gtags -s", desc = "Gtag -s" },
    ["<leader>G"] = { ":Gtags -g", desc = "Gtag grep" },
    ["<leader>r"] = { ":Gtags -s", desc = "Gtag references" },
    ["<leader>n"] = { ":cn<CR>", desc = "QuickFix Next" },
    ["<leader>p"] = { ":cp<CR>", desc = "QuickFix Previous" },
    -- ["<Tab><Tab>"] = { ":cclose<CR>", desc = "close quickfix" },
    -- ["<leader><Tab>"] = { ":copen<CR>", desc = "open quickfix" },
    ---
    -- converting QuickFix from new vimrc
    -- nnoremap <expr> <Tab> empty(filter(getwininfo(), 'v:val.quickfix')) ? ':copen<CR>' : ':cclose<CR>'
    ["<Tab>"] = {
      ":execute empty(filter(getwininfo(), 'v:val.quickfix')) ? ':copen' : ':cclose'<CR>",
      desc = "Toggle QuickFix",
    },
    ["<leader><F2>"] = { ":LspStop<CR>", desc = "Stop LSP" },
    ["<F3>"] = { ":ToggleTerm direction='horizontal'<CR>", desc = "horizontal terminal split" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
