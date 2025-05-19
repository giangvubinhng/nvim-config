return {
  { 
    'echasnovski/mini.nvim', 
    version = false,
    config = function()
      local statusline = require 'mini.statusline'
      local comment = require 'mini.comment'
      local icons = require 'mini.icons'
      local cursorword = require 'mini.cursorword'
      local tabline = require 'mini.tabline'
      -- local completion = require 'mini.completion'
      local hipatterns = require 'mini.hipatterns'
      statusline.setup({ use_icons = true })
      comment.setup()
      icons.setup()
      cursorword.setup()
      tabline.setup()
      -- completion.setup()
      hipatterns.setup({
        highlighters = {
          -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
          fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
          hack  = { pattern = '%f[%w]()HACK()%f[%W]',  group = 'MiniHipatternsHack'  },
          todo  = { pattern = '%f[%w]()TODO()%f[%W]',  group = 'MiniHipatternsTodo'  },
          note  = { pattern = '%f[%w]()NOTE()%f[%W]',  group = 'MiniHipatternsNote'  },

          -- Highlight hex color strings (`#rrggbb`) using that color
          hex_color = hipatterns.gen_highlighter.hex_color(),
        },
      })
    end
  }
}
