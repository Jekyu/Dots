return {
  "lervag/vimtex",
  ft = { "tex" },
  init = function()
    vim.g.vimtex_view_method = "zathura" -- o tu visor
    vim.g.vimtex_compiler_method = "latexmk"
  end,
}
