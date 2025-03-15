return {
  "EdenEast/nightfox.nvim",
  config = function()
    vim.cmd("highlight! link WinSeparator GlyphPalette2")
    vim.cmd("highlight! Visual guibg=#4a3332")
    vim.cmd("colorscheme duskfox")
    require('nightfox').setup({
      options = {
        transparent = true,
      },
    })
    vim.cmd("colorscheme duskfox")
  end,
}
