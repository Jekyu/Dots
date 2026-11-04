-- Añadir en plugins
return {
  "barreiroleo/ltex_extra.nvim",
  ft = { "tex", "latex", "markdown" }, -- Cargar solo para estos tipos de archivo
  dependencies = { "neovim/nvim-lspconfig" },
  config = function()
    require("ltex_extra").setup({
      load_langs = { "es" }, -- Cargar diccionarios de estos idiomas { "es", "en" },
      path = vim.fn.stdpath("config") .. "/spell", -- Ruta de almacenamiento del diccionario
    })
  end,
}
