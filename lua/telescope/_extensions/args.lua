local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values

local run = function(opts)
  opts = opts or {}
  pickers.new(opts, {
    prompt_title = "args",
    finder = finders.new_table {
      results = vim.fn.argv(),
    },
    sorter = conf.file_sorter(opts),
  }):find()
end

return require("telescope").register_extension {
  exports = {
    args = run
  },
}
