local home = os.getenv('HOME')
local db = require('dashboard')

vim.g.dashboard_custom_header = {
 '',
 '',
 '',
 ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
 ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
 ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
 ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
 ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
 ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
 '',
 '',
 '',
}

-- db.preview_file_path = home .. '/.config/nvim/static/neovim.cat' -- default DASHBOARD header
db.preview_file_height = 12
db.preview_file_width = 80

db.custom_center = {
      {icon = '  ',
      desc = 'Find  File                              ',
      action = 'Telescope find_files find_command=rg,--hidden,--files',
      shortcut = '<leader> f f'},
      {icon = '  ',
      desc =  'Open Dev                                ',
      action =  'cd ~/dev',
      shortcut = '<leader> f d'},
      {icon = '  ',
      desc = 'Find  Word                              ',
      action = 'Telescope live_grep',
      shortcut = '<leader> f g'},
      {icon = '  ',
      desc = 'Open Neovim Config                      ',
      action = 'cd ~/.config/nvim/',
      shortcut = '<leader> f d'},
    }
