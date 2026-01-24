return {
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  -- },
  -- {
  --   'sainnhe/everforest',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     -- Optionally configure and load the colorscheme
  --     -- directly inside the plugin declaration.
  --     vim.g.everforest_enable_italic = true
  --     vim.g.everforest_background = "soft"
  --     -- vim.cmd.colorscheme('everforest')
  --   end
  -- },
  {
    "ydkulks/cursor-dark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("cursor-dark-midnight")
      require("cursor-dark").setup({
        -- For theme
        -- style = "dark-midnight",
        -- For a transparent background
        -- transparent = true,
        -- If you have dashboard-nvim plugin installed
        -- dashboard = true,
      })
    end,
  },
}
