return {
  "Mofiqul/dracula.nvim",
  name = "dracula",
  lazy = false,
  priority = 1000,
  config = function()
    -- load the colortheme
    vim.cmd([[colorscheme dracula]])
  end,
}
