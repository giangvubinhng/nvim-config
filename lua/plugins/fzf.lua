return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- or if using mini.icons/mini.nvim
  dependencies = { "echasnovski/mini.icons" },
  config = function()
    local fzf = require("fzf-lua")
    fzf.setup {
      {"fzf-native", "hide"}
    }
    vim.keymap.set('n', '<leader>ff', fzf.files, { desc = 'Fzf-lua find files' })
    vim.keymap.set('n', '<leader>fg', fzf.live_grep, { desc = 'Fzf-lua live grep' })
    vim.keymap.set('n', '<space>.', function()
      fzf.files({
        cwd = "/home/giang/" ,
        cmd = "fdfind --type f --hidden --exclude .git --exclude node_modules --exclude .rustup --exclude .cargo --exclude .cache --exclude .nvm --exclude .npm --exclude .idea"
      })  -- or "." if you want to start from current working dir
    end, { desc = 'Fzf-lua global file search' })
  end
}
