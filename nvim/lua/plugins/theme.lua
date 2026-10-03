return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "moon",
      transparent = true,
      on_colors = function(colors)
        colors.bg = "#000000"
        colors.bg_dark = "#232323"
        colors.bg_float = "#363636"
        colors.fg = "#ffffff"
        colors.cyan = "#00ffff"
        colors.magenta = "#ff00ff"
        colors.red = "#ff0000"
        colors.orange = "#ffcc00"
        colors.yellow = "#ffff00"
        colors.green = "#00ff00"
        colors.blue = "#00ffff"
        colors.purple = "#4b0082"
      end,
    },
    config = function()
      vim.cmd[[colorscheme tokyonight]]
    end,
  },
}
