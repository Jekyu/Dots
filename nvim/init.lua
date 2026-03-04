-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- init.lua o plugins.lua
require("lazy").setup({
  {
    "stevearc/oil.nvim",
    opts = {},
    -- Puedes mapearlo aquí o en tu configuración principal
  },
})
