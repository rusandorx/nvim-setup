return {
  {
    "vague2k/huez.nvim",

    -- if you want registry related features, uncomment this
    import = "huez-manager.import",
    branch = "stable",
    event = "UIEnter",
    config = function()
      local pickers = require("huez.pickers")
      vim.keymap.set("n", "<leader>ut", pickers.themes, { desc = "Theme Picker" })
      vim.keymap.set("n", "<leader>uu", pickers.live, { desc = "Theme Picker Live" })
      vim.keymap.set("n", "<leader>uU", pickers.favorites, { desc = "Theme Picker Favorites" })
      require("huez").setup({
        exclude = {},
        -- path = vim.fs.normalize("C:\\Users\\rusla\\AppData\\Local") .. "/huez",
      })
    end,
  },
  -- load/save our last used colorscheme automatically
  -- {
  --   "https://git.sr.ht/~swaits/colorsaver.nvim",
  --   event = "VimEnter",
  --   opts = {},
  --   dependencies = {
  --     -- load colorschemes as a dependency of colorsaver
  --     { "catppuccin/nvim" },
  --     { "sainnhe/sonokai" },
  --   },
  -- },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    event = "User LazyColorscheme",
    -- priority = 1000,
    -- lazy = true,
    -- enabled = false,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        background = {
          light = "latte",
          dark = "mocha",
        },
        transparent_background = false,
        term_colors = true,
        integrations = {
          cmp = true,
          nvimtree = true,
          treesitter = true,
          notify = true,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
          diffview = true,
          fzf = true,
          gitsigns = true,
          markdown = true,
          mason = true,
          neotree = true,
          neotest = true,
          coc_nvim = true,
          dropbar = {
            enabled = false,
            color_mode = false, -- enable color for kind's texts, not just kind's icons
          },
          dadbod_ui = true,
          which_key = true,
        },
        vim.cmd.colorscheme("catppuccin"),
      })
    end,
  },
  {
    "sainnhe/sonokai",
    event = "User LazyColorscheme",
    name = "sonokai",
    -- lazy = true,
    -- enabled = true,
    -- priority = 1000,
    config = function()
      -- vim.g.sonokai_transparent_background = "1"
      vim.g.sonokai_enable_italic = "1"
      vim.g.sonokai_style = "andromeda"
      vim.cmd.colorscheme("sonokai")
    end,
  },
}
