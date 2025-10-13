return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      -- ensure_installed = { "lua", "python", "rust", "sql", "typescript", "tsx", "yaml", "json", "javascript", "dockerfile", "css", "html"},
      ensure_installed = { "lua", "python", "yaml", "json", "dockerfile", "typescript", "tsx", "javascript" },
      sync_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
      },
      indent = { enable = true },
    })
  end
}
