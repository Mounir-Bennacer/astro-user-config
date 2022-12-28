local status_ok, copilot = pcall(require, "copilot")
if not status_ok then return end

copilot.setup {
  -- cmp = {
  --   enabled = true,
  --   method = "getCompletionsCycling",
  -- },
  panel = {
    enabled = false,
    auto_refresh = false,
    keymap = {
      accept = "<CR>",
      jump_prev = "[[",
      jump_next = "]]",
      refresh = "gr",
      open = "<M-CR>",
    },
  },
  suggestion = {
    accept = false,
  },
  filetypes = {
    ["*"] = false,
    javascript = true,
    typescript = true,
    lua = true,
    rust = true,
    c = false,
    ["c#"] = false,
    ["c++"] = false,
    go = true,
    python = true,
    yaml = false,
    markdown = false,
    help = false,
    gitcommit = false,
    gitrebase = false,
    hgcommit = false,
    svn = false,
    cvs = false,
    ["."] = false,
  },
  copilot_node_command = "node", -- Node.js version must be > 16.x
  ft_disable = { "markdown" },
  copilot_no_tab_map = true,
  server_opts_overrides = {
    trace = "verbose",
    settings = {
      advanced = {
        listCount = 10, -- #completions for panel
        inlineSuggestCount = 3, -- #completions for getCompletions
      },
    },
  },
}
