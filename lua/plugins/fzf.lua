return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- or if using mini.icons/mini.nvim
  dependencies = { "echasnovski/mini.icons" },
  config = function()
    local fzf = require("fzf-lua")
    fzf.setup {}
    vim.keymap.set('n', '<leader>ff', fzf.files, { desc = 'Fzf-lua find files' })
    vim.keymap.set('n', '<leader>fg', fzf.live_grep, { desc = 'Fzf-lua live grep' })
  end
}
