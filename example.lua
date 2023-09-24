local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values

local example = function(opts)
    opts = opts or {}
    pickers.new(opts, {
        finder = finders.new_table {
            results = { "blue", "elflord", "desert" }
        },
        sorter = conf.generic_sorter(opts),
    }):find()
end

example()
