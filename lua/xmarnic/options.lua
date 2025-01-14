vim.opt.smartcase = true
vim.opt.showmode = false
vim.opt.swapfile = false
vim.opt.undodir = string.format("%s/undodir", vim.fn.stdpath("cache"))
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.hidden = true
vim.opt.completeopt = { "menuone", "noinsert", "noselect" }
vim.opt.shortmess:append("c")
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 7
vim.opt.expandtab = true
vim.opt.foldlevelstart = 99
vim.opt.number = true -- display line numbers
vim.opt.relativenumber = true -- display relative line numbers
vim.opt.signcolumn = "yes"
vim.opt.wrap = true
vim.opt.wildignorecase = true
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.laststatus = 3
vim.opt.clipboard = "unnamedplus"
vim.opt.iskeyword:remove("_")
