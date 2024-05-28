local group = vim.api.nvim_create_augroup("UserGroup", {})

vim.api.nvim_create_autocmd("ColorScheme", {
	group = group,
	callback = function()
		vim.api.nvim_set_hl(0, "WinSeparator", { bg = "NONE", fg = "#aaaaaa" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE", fg = "#aaaaaa" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE", fg = "#aaaaaa" })
	end,
	desc = "Brighter window separator",
})

vim.api.nvim_create_autocmd("TextYankPost", {
	group = group,
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 300 })
	end,
	desc = "Highlight words when a yank (y) is performed",
})

vim.api.nvim_create_autocmd("BufReadPost", {
	pattern = "*",
	callback = function()
		local last_pos = vim.fn.line("'\"")
		if last_pos > 0 and last_pos <= vim.fn.line("$") then
			vim.api.nvim_win_set_cursor(0, { last_pos, 0 })
		end
	end,
})
