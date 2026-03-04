-- en tu config de LazyVim (e.g. plugins.lua o lspconfig)
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {}, -- habilita clangd
      },
    },
  },
}
