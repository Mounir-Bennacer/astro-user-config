local M = {}

function M.setup()
  require("pounce").setup {
    accept_keys = "NTESIROAGJKDFVBYMCXWPQZ",
    accept_best_key = "<enter>",
    multi_window = true,
    debug = false,
  }
end

return M
