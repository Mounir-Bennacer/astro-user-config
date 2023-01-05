return {
  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------        STARTUP SCREEN        --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
  ["goolord/alpha-nvim"] = {
    disable = false,
    config = function() require("user.plugins.alpha").setup() end,
  },
  ["folke/drop.nvim"] = {
    event = "VimEnter",
    config = function()
      math.randomseed(os.time())
      local theme = ({ "stars", "snow", "xmas" })[math.random(1, 3)]
      require("drop").setup { theme = theme }
    end,
    disable = true,
  },

  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------            CMP               --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
  ["hrsh7th/cmp-calc"] = { after = "nvim-cmp", config = function() require "user.plugins.cmp-calc" end },
  ["hrsh7th/cmp-emoji"] = { after = "nvim-cmp", config = function() require "user.plugins.cmp-emoji" end },
  ["jc-doyle/cmp-pandoc-references"] = {
    after = "nvim-cmp",
    config = function() require "user.plugins.cmp-pandoc-references" end,
  },
  ["kdheepak/cmp-latex-symbols"] = {
    after = "nvim-cmp",
    config = function() require "user.plugins.cmp-latex-symbols" end,
  },

  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------           GITHUB             --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
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
  ["sindrets/diffview.nvim"] = {
    opt = true,
    setup = function() table.insert(astronvim.git_plugins, "diffview.nvim") end,
    config = function() require "user.plugins.diffview" end,
  },

  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------           IDE LIKE           --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
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
  ["rmagatti/goto-preview"] = {
    config = function() require("user.plugins.goto-preview").setup() end,
  },

  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------      CODE DOCUMENTATION      --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
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

  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------        COLOUR HELPER         --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
  ["max397574/colortils.nvim"] = {
    cmd = "Colortils",
    config = function() require("colortils").setup() end,
  },
  ["ziontee113/color-picker.nvim"] = {
    cmd = { "PickColor", "PickColorInsert" },
    config = function() require "color-picker" end,
  },

  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------       CODE SUGGESTION        --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
  ["github/copilot.vim"] = {
    event = "InsertEnter",
    disable = false,
  },

  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------             JUMP             --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
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

  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------            MARKDOWN          --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
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

  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------            THEMES            --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
  ["EdenEast/nightfox.nvim"] = {
    module = "nightfox",
    config = function() require "user.plugins.themes.nightfox" end,
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

  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------            TESTING           --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
  ["puremourning/vimspector"] = {
    cmd = { "VimspectorInstall", "VimspectorUpdate" },
    fn = { "vimspector#Launch()", "vimspector#ToggleBreakpoint", "vimspector#Continue" },
    config = function() require("user.plugins.vimspector").setup() end,
    disable = true,
  },
  ["nvim-neotest/neotest"] = {
    requires = {
      {
        "vim-test/vim-test",
        event = { "BufReadPre" },
        config = function() require("user.plugins.test").setup() end,
      },
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      { "nvim-neotest/neotest-vim-test", module = { "neotest-vim-test" } },
      { "nvim-neotest/neotest-python", module = { "neotest-python" } },
      { "nvim-neotest/neotest-plenary", module = { "neotest-plenary" } },
      { "nvim-neotest/neotest-go", module = { "neotest-go" } },
      { "haydenmeade/neotest-jest", module = { "neotest-jest" } },
      { "rouge8/neotest-rust", module = { "neotest-rust" } },
    },
    module = { "neotest", "neotest.async" },
    config = function() require("user.plugins.neotest").setup() end,
    disable = false,
  },

  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------             WEB DEV          --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
  ["vuki656/package-info.nvim"] = {
    opt = true,
    requires = {
      "MunifTanjim/nui.nvim",
    },
    module = { "package-info" },
    ft = { "json" },
    config = function() require("user.plugins.package").setup() end,
    disable = false,
  },

  ["jose-elias-alvarez/typescript.nvim"] = {
    after = "mason-lspconfig.nvim",
    config = function() require "user.plugins.typescript" end,
  },
  ["mxsdev/nvim-dap-vscode-js"] = {
    after = "mason-nvim-dap.nvim",
    config = function() require "user.plugins.nvim-dap-vscode-js" end,
  },
  ["nanotee/sqls.nvim"] = { module = "sqls" },
  ["theHamsta/nvim-dap-virtual-text"] = {
    after = "nvim-dap",
    config = function() require "user.plugins.nvim-dap-virtual-text" end,
  },
  ["wakatime/vim-wakatime"] = {
    -- opt = true,
    setup = function() table.insert(astronvim.file_plugins, "vim-wakatime") end,
  },

  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------          REST CLIENT         --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
  ["NTBBloodbath/rest.nvim"] = {
    config = function()
      require("rest-nvim").setup {}
      vim.keymap.set("n", "<C-j>", "<Plug>RestNvim", { noremap = true, silent = true })
    end,
    disable = true,
  },

  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------           SIDEBAR            --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
  ["liuchengxu/vista.vim"] = {
    cmd = { "Vista" },
    config = function() vim.g.vista_default_executive = "nvim_lsp" end,
    disable = true,
  },
  ["sidebar-nvim/sidebar.nvim"] = {
    cmd = { "SidebarNvimToggle" },
    config = function() require("sidebar-nvim").setup { open = false } end,
  },
  ["stevearc/aerial.nvim"] = {
    config = function()
      require("aerial").setup {
        backends = { "treesitter", "lsp" },
        on_attach = function(bufnr)
          vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
          vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
        end,
      }
    end,
    module = { "aerial", "telescope._extensions.aerial" },
    cmd = { "AerialToggle" },
  },

  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------           TODO LIST          --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
  ["folke/todo-comments.nvim"] = {
    config = function() require("config.todocomments").setup() end,
    cmd = { "TodoQuickfix", "TodoTrouble", "TodoTelescope" },
  },

  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------         TRANSLATION          --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
  ["voldikss/vim-translator"] = {
    cmd = { "Translate", "TranslateV", "TranslateW", "TranslateWV", "TranslateR", "TranslateRV", "TranslateX" },
    config = function()
      vim.g.translator_target_lang = "zh"
      vim.g.translator_history_enable = true
    end,
  },
  ["potamides/pantran.nvim"] = {
    cmd = "Pantran",
  },

  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------      REPL & CODE RUNNER      --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
  ["hkupty/iron.nvim"] = {
    -- opt = false,
    -- disable = false,
    tag = "v3.0",
    -- config = function() require("user.plugins.iron").setup() end,
  },

  ["stevearc/overseer.nvim"] = {
    opt = true,
    module = { "neotest.consumers.overseer" },
    cmd = {
      "OverseerToggle",
      "OverseerOpen",
      "OverseerRun",
      "OverseerBuild",
      "OverseerClose",
      "OverseerLoadBundle",
      "OverseerSaveBundle",
      "OverseerDeleteBundle",
      "OverseerRunCmd",
      "OverseerQuickAction",
      "OverseerTaskAction",
    },
    config = function() require("overseer").setup() end,
  },

  ["michaelb/sniprun"] = {
    run = "bash ./install.sh",
    cmd = { "SnipRun", "SnipInfo", "SnipReset", "SnipReplMemoryClean", "SnipClose", "SnipLive" },
    module = { "sniprun", "sniprun.api" },
  },

  ["luk400/vim-jukit"] = {
    cmd = { "Jukit" },
    config = function() require("jukit").setup() end,
    opt = true,
    disable = true,
  },

  ["kana/vim-textobj-user"] = {
    opt = false,
    disable = false,
  },

  ["GCBallesteros/vim-textobj-hydrogen"] = {
    opt = false,
    disable = false,
  },

  ["goerz/jupytext.vim"] = {
    opt = false,
    disable = false,
  },
  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------          TELESCOPE           --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
  ["nvim-telescope/telescope-bibtex.nvim"] = {
    after = "telescope.nvim",
    config = function() require "user.plugins.telescope.telescope-bibtex" end,
  },
  ["nvim-telescope/telescope-file-browser.nvim"] = {
    after = "telescope.nvim",
    config = function() require "user.plugins.telescope.telescope-file-browser" end,
  },
  ["nvim-telescope/telescope-media-files.nvim"] = {
    after = "telescope.nvim",
    config = function() require "user.plugins.telescope.telescope-media-files" end,
  },
  ["nvim-telescope/telescope-project.nvim"] = {
    after = "telescope.nvim",
    config = function() require "user.plugins.telescope.telescope-project" end,
  },

  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------          TREESITTER          --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
  ["nvim-treesitter/nvim-treesitter-textobjects"] = { after = "nvim-treesitter" },
  ["nvim-treesitter/playground"] = { after = "nvim-treesitter" },
  ["romgrk/nvim-treesitter-context"] = {
    config = function() require("user.plugins.treesitter.context").setup() end,
    disable = false,
  },

  ----------------------------------------------------------------------------------------------------------------------
  --------------------------------------------         MISCELLANEOUS        --------------------------------------------
  ----------------------------------------------------------------------------------------------------------------------
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
  ["junegunn/vim-easy-align"] = {
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "vim-easy-align") end,
  },
  ["machakann/vim-sandwich"] = {
    opt = true,
    setup = function() table.insert(astronvim.file_plugins, "vim-sandwich") end,
  },
  ["p00f/clangd_extensions.nvim"] = {
    after = "mason-lspconfig.nvim",
    config = function() require "user.plugins.clangd_extensions" end,
  },
  ["lvimuser/lsp-inlayhints.nvim"] = {
    module = "lsp-inlayhints",
    config = function() require "user.plugins.lsp-inlayhints" end,
  },
  ["ziontee113/syntax-tree-surfer"] = {
    module = "syntax-tree-surfer",
    config = function() require "user.plugins.syntax-tree-surfer" end,
  },
}
