local M = {}

local opts = {noremap = true, silent = true}

-- mapping for danymat/neogen plugin
M.neogen = {
  n = {
    ["<Leader>af"] = {":lua require('neogen').generate({type = 'func'})<CR>", opts}
    ["<Leader>ac"] = {":lua require('neogen').generate({type = 'class'})<CR>", opts}
  }
}

return M
