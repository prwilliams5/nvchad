local M = {}

M.disabled = {
  i = {
    ["<C-h>"] = { "<Left>", "Move left" },
    ["<C-l>"] = { "<Right>", "Move right" },
    ["<C-j>"] = { "<Down>", "Move down" },
    ["<C-k>"] = { "<Up>", "Move up" },
  }
}

M.general = {
  n = {
    -- enter cmdline
    [";"] = { ":", "enter cmdline", opts = { nowait = true } },

    -- select all
    ["<C-a>"] = { "gg Vg", "Select all" },

    -- switch windows
    ["<C-h>"] = { "<C-w>h", "Window left" },
    ["<C-l>"] = { "<C-w>l", "Window right" },
    ["<C-j>"] = { "<C-w>j", "Window down" },
    ["<C-k>"] = { "<C-w>k", "Window up" },

    -- resize windows
    ["<C-w><left>"] = { "<C-w><", "Window left" },
    ["<C-w><right>"] = { "<C-w>>", "Window right" },
    ["<C-w><up>"] = { "<C-w>+", "Window up" },
    ["<C-w><down>"] = { "<C-w>-", "Window down" },

    -- split window
    ["<leader>vs"] = { "<cmd> :vsp <Cr>", "Vertical split" },
    ["<leader>hs"] = { "<cmd> :sp <Cr>", "Horizontal split" }
  }
}

return M
