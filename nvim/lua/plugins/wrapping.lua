return {
  "andrewferrier/wrapping.nvim",
  config = function()
    require("wrapping").setup({
      -- Asegura que LaTeX use siempre soft wrapping
      softener = {
        tex = true, -- Fuerza soft wrapping para .tex
        latex = true, -- Fuerza soft wrapping para .latex
      },
      -- Notificaciones al cambiar modo (opcional)
      notify_on_switch = true,
    })
  end,
  ft = { "tex", "latex" },
}
