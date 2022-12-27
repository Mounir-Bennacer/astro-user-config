local status_ok, copilot = pcall(require, "copilot")
if not status_ok then return end

copilot.setup {
  cmp = {
    enabled = true,
    method = "getCompletionsCycling",
  },
  panel = {
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
    auto_trigger = true,
    keymap = {
      accept = "<M-y>",
      prev = "<M-[>",
      next = "<M-]>",
      dismiss = "<C-]>",
    },
  },
  ft_disable = { "markdown" },
  server_opts_overrides = {
    -- trace = "verbose",
    settings = {
      advanced = {
        listCount = 10, -- #completions for panel
        inlineSuggestCount = 3, -- #completions for getCompletions
      },
    },
  },
}
