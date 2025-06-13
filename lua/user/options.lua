-----------------
--- Editing
-----------------
vim.opt.tabstop = 4 --- https://neovim.io/doc/user/options.html#'tabstop'
vim.opt.softtabstop = 4 --- https://neovim.io/doc/user/options.html#'softtabstop'
vim.opt.shiftwidth = 4 --- https://neovim.io/doc/user/options.html#'shiftwidth'
vim.opt.expandtab = true --- https://neovim.io/doc/user/options.html#'expandtab'
vim.opt.ignorecase = true --- https://neovim.io/doc/user/options.html#'ignorecase'
vim.opt.clipboard = "unnamedplus" --- https://neovim.io/doc/user/options.html#'clipboard'
vim.opt.mouse = ""
-----------------
--- Editing
-----------------


-----------------
--- API
-----------------
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
  end,
})

vim.api.nvim_create_autocmd("VimResized", {
  pattern = "*",
  command = "wincmd =",
})

-----------------
--- API
-----------------


-----------------
--- I/O
-----------------
vim.opt.fsync = true --- https://neovim.io/doc/user/options.html#'fsync'
-----------------
--- I/O
-----------------

-----------------
--- UI
-----------------
vim.opt.number = true --- https://neovim.io/doc/user/options.html#'number'
vim.opt.relativenumber = true --- https://neovim.io/doc/user/options.html#'relativenumber'
vim.opt.cursorline = true --- https://neovim.io/doc/user/options.html#'cursorline'
-----------------
--- UI
-----------------
