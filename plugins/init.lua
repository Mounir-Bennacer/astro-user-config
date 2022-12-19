return {
  ["goolord/alpha-nvim"] = {
    disable = true,
    config = function() require "user.plugins.alpha" end,
  },
  ["max397574/better-escape.nvim"] = { disable = true },

  ["andymass/vim-matchup"] = { after = "nvim-treesitter" },
  ["arsham/indent-tools.nvim"] = {
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "indent-tools.nvim") end,
    requires = { "arsham/arshlib.nvim", module = "arshlib" },
    config = function() require "user.plugins.indent-tools" end,
  },
  ["ethanholz/nvim-lastplace"] = {
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "nvim-lastplace") end,
    config = function() require "user.plugins.nvim-lastplace" end,
  },
  ["hrsh7th/cmp-calc"] = { after = "nvim-cmp", config = function() require "user.plugins.cmp-calc" end },
  ["hrsh7th/cmp-emoji"] = { after = "nvim-cmp", config = function() require "user.plugins.cmp-emoji" end },
  ["jc-doyle/cmp-pandoc-references"] = {
    after = "nvim-cmp",
    config = function() require "user.plugins.cmp-pandoc-references" end,
  },
  ["jose-elias-alvarez/typescript.nvim"] = {
    after = "mason-lspconfig.nvim",
    config = function() require "user.plugins.typescript" end,
  },
  ["junegunn/vim-easy-align"] = {
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "vim-easy-align") end,
  },
  ["kdheepak/cmp-latex-symbols"] = {
    after = "nvim-cmp",
    config = function() require "user.plugins.cmp-latex-symbols" end,
  },
  ["machakann/vim-sandwich"] = {
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "vim-sandwich") end,
  },
  ["mxsdev/nvim-dap-vscode-js"] = {
    after = "mason-nvim-dap.nvim",
    config = function() require "user.plugins.nvim-dap-vscode-js" end,
  },
  ["nanotee/sqls.nvim"] = { module = "sqls" },
  ["nvim-telescope/telescope-bibtex.nvim"] = {
    after = "telescope.nvim",
    config = function() require "user.plugins.telescope-bibtex" end,
  },
  ["nvim-telescope/telescope-file-browser.nvim"] = {
    after = "telescope.nvim",
    config = function() require "user.plugins.telescope-file-browser" end,
  },
  ["nvim-telescope/telescope-hop.nvim"] = {
    after = "telescope.nvim",
    config = function() require "user.plugins.telescope-hop" end,
  },
  ["nvim-telescope/telescope-media-files.nvim"] = {
    after = "telescope.nvim",
    config = function() require "user.plugins.telescope-media-files" end,
  },
  ["nvim-telescope/telescope-project.nvim"] = {
    after = "telescope.nvim",
    config = function() require "user.plugins.telescope-project" end,
  },
  ["nvim-treesitter/nvim-treesitter-textobjects"] = { after = "nvim-treesitter" },
  ["p00f/clangd_extensions.nvim"] = {
    after = "mason-lspconfig.nvim",
    config = function() require "user.plugins.clangd_extensions" end,
  },
  ["lvimuser/lsp-inlayhints.nvim"] = {
    module = "lsp-inlayhints",
    config = function() require "user.plugins.lsp-inlayhints" end,
  },
  ["sindrets/diffview.nvim"] = {
    opt = true,
    setup = function() table.insert(astronvim.git_plugins, "diffview.nvim") end,
    config = function() require "user.plugins.diffview" end,
  },
  ["theHamsta/nvim-dap-virtual-text"] = {
    after = "nvim-dap",
    config = function() require "user.plugins.nvim-dap-virtual-text" end,
  },
  ["wakatime/vim-wakatime"] = {
    -- opt = true,
    setup = function() table.insert(astronvim.file_plugins, "vim-wakatime") end,
  },
  ["ziontee113/syntax-tree-surfer"] = {
    module = "syntax-tree-surfer",
    config = function() require "user.plugins.syntax-tree-surfer" end,
  },

  ["pwntester/octo.nvim"] = {
    cmd = "Octo",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function() require("octo").setup() end,
    disable = false,
  },

  ----------------------
  --     IDE LIKE     --
  ----------------------
  ["karb94/neoscroll.nvim"] = {
    event = "BufReadPre",
    config = function() require("user.plugins.neoscroll").setup() end,
    disable = false,
  },
  ["google/vim-searchindex"] = { event = "BufReadPre", disable = false },
  ["tyru/open-browser.vim"] = { event = "BufReadPre", disable = false },
  ["bennypowers/nvim-regexplainer"] = {
    config = function() require("regexplainer").setup() end,
    requires = {
      "nvim-treesitter/nvim-treesitter",
      "MunifTanjim/nui.nvim",
    },
    disable = true,
  },
  ["echasnovski/mini.nvim"] = {
    event = { "BufReadPre" },
    config = function() require("user.plugins.mini").setup() end,
  },

  ------------------------
  -- CODE DOCUMENTATION --
  ------------------------
  ["danymat/neogen"] = {
    config = function() require("user.plugins.neogen").setup() end,
    cmd = { "Neogen" },
    module = "neogen",
    disable = false,
  },
  ["kkoomen/vim-doge"] = {
    run = ":call doge#install()",
    config = function() require("user.plugins.doge").setup() end,
    cmd = { "DogeGenerate", "DogeCreateDocStandard" },
    disable = false,
  },
  ------------------------
  --    COLOUR HELPER   --
  ------------------------
  ["max397574/colortils.nvim"] = {
    cmd = "Colortils",
    config = function() require("colortils").setup() end,
  },
  ["ziontee113/color-picker.nvim"] = {
    cmd = { "PickColor", "PickColorInsert" },
    config = function() require "color-picker" end,
  },
  ------------------------
  --   CODE SUGGESTION  --
  ------------------------
  ["zbirenbaum/copilot.lua"] = {
    config = function() require "user.plugins.copilot" end,
  },

  ["zbirenbaum/copilot-cmp"] = {
    after = { "copilot.lua" },
    config = function() require("copilot_cmp").setup() end,
  },

  ------------------------
  --        JUMP        --
  ------------------------
  ["phaazon/hop.nvim"] = {
    cmd = "HopWord",
    module = "hop",
    keys = { "f", "F", "t", "T" },
    config = function() require("user.plugins.hop").setup() end,
    disable = true,
  },
  ["ggandor/leap.nvim"] = {
    keys = { "s", "S" },
    config = function()
      local leap = require "leap"
      leap.add_default_mappings()
    end,
    disable = false,
  },
  ["abecodes/tabout.nvim"] = {
    after = { "nvim-cmp" },
    config = function()
      require("tabout").setup {
        completion = false,
        ignore_beginning = true,
      }
    end,
  },
  ["AndrewRadev/splitjoin.vim"] = { keys = { "gS", "gJ" }, disable = false },

  ------------------------
  --      MARKDOWN      --
  ------------------------
  ["iamcco/markdown-preview.nvim"] = {
    opt = true,
    run = function() vim.fn["mkdp#util#install"]() end,
    ft = "markdown",
    cmd = { "MarkdownPreview" },
    requires = { "zhaozg/vim-diagram", "aklt/plantuml-syntax" },
  },
  ["jakewvincent/mkdnflow.nvim"] = {
    config = function() require("mkdnflow").setup {} end,
    ft = "markdown",
  },
  ["nvim-neorg/neorg"] = {
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {},
          ["core.presenter"] = {
            config = {
              zen_mode = "truezen",
            },
          },
        },
      }
    end,
    ft = "norg",
    requires = { "nvim-lua/plenary.nvim", "Pocco81/TrueZen.nvim" },
    disable = true,
  },
  ["phaazon/mind.nvim"] = {
    requires = { "nvim-lua/plenary.nvim" },
    config = function() require("mind").setup() end,
    disable = true,
  },
  ------------------------
  --       THEMES       --
  ------------------------
  ["EdenEast/nightfox.nvim"] = {
    module = "nightfox",
    config = function() require "user.plugins.nightfox" end,
  },
  ["pineapplegiant/spaceduck"] = { branch = "main" },
  ["tomasr/molokai"] = {},
  ["sjl/badwolf"] = {},
  ["altercation/solarized"] = {},
  ["dracula/dracula-theme"] = {
    opt = true,
    disable = true,
  },
  ["NLKNguyen/papercolor-theme"] = {
    disable = true,
  },
  ["arcticicestudio/nord-vim"] = {},
  ["rakr/vim-one"] = {},
  ["mhartington/oceanic-next"] = {},
  ["ayu-theme/ayu-vim"] = {},
  ["ciaranm/inkpot"] = {},
  ["kyoz/purify"] = {},
  ["drewtempelmeyer/palenight.vim"] = {},
  ["bluz71/vim-moonfly-colors"] = {
    branch = "cterm-compat",
    config = function() vim.cmd.colorscheme [[moonfly]] end,
    disable = true,
  },
  ["bluz71/vim-nightfly-colors"] = {
    config = function()
      -- vim.cmd.colorscheme [[nightfly]]
      vim.g.nightflyCursorColor = true
      vim.g.nightflyItalics = false
      vim.g.nightflyNormalFloat = true
      vim.g.nightflyTerminalColors = false
      vim.g.nightflyTransparent = true
      vim.g.nightflyUndercurls = false
      vim.g.nightflyUnderlineMatchParen = true
      vim.g.nightflyWinSeparator = 2
    end,
    disable = true,
  },
  ["catppuccin/nvim"] = {
    as = "catppuccin",
    config = function() require "user.plugins.themes.catppuccin" end,
    disable = true,
  },
  ["folke/tokyonight.nvim"] = {
    -- https://github.com/folke/tokyonight.nvim
    config = function() require "user.plugins.themes.tokyonight" end,
    disable = false,
  },
  ["marko-cerovac/material.nvim"] = {
    -- https://github.com/marko-cerovac/material.nvim
    config = function() require "user.plugins.themes.material" end,
    disable = false,
  },
  ["navarasu/onedark.nvim"] = {
    -- https://github.com/navarasu/onedark.nvim
    config = function() require "user.plugins.themes.onedark" end,
    disable = false,
  },
  ["rebelot/kanagawa.nvim"] = {
    -- https://github.com/rebelot/kanagawa.nvim
    config = function() require "user.plugins.themes.kanagawa" end,
    disable = false,
  },
}
