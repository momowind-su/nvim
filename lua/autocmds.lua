require "nvchad.autocmds"

-- Treat .cpp files as C code
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.cpp",
  callback = function()
    vim.bo.filetype = "c"
  end,
})
