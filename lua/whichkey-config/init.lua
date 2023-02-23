local wk = require("which-key")
wk.setup {
  plugins = {
    marks = false,
    registers = false,
    spelling = {
        enabled = false,
        suggestions = 20 
    },
    presets = {
      operators = false,
      motions = false,
      text_objects = false,
      windows = false,
      nav = false,
      z = false,
      g = false
    }
  }
}

-- Mappings
local mappings = {
    w = { ":w<CR>", "Save" },
    q = { ":q<CR>", "Quit" },
    Q = { ":wq<CR>", "Save & Quit" },
    x = { ":bdelete<CR>", "Close Tab/Buffer" },
    s = { ":source %<CR>", "Update Buffer" }, 
    f = { ":Telescope find_files<cr>", "Telescope Find Files" },
    T = { ":ToggleTerm<CR>", "Floating Terminal" },
    v = {
        name = "Splits",
        v = { ":vsplit ", "Vertical Split" },
        s = { ":split ", "Horizontal Split" }
    },
    p = {
        name = "Packer",
        c = { ":PackerCompile profile=true<cr>", "Recompile Plugins" },
        s = { ":PackerSync<cr>", "Sync Plugins" },
    }
}

local opts = { prefix = '<leader>' }
wk.register(mappings, opts)
