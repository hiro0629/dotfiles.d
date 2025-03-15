 return {
  "nvim-tree/nvim-tree.lua",
--  config = true,
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 21, -- Set width of the directory tree
        side = "left", -- Can also be "right"
      },
    })
  end,
} 
