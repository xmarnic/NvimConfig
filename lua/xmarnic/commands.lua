-- Command to save files with sudo privileges
vim.api.nvim_create_user_command("W", function()
	vim.cmd("write !sudo tee % >/dev/null")
	vim.cmd("edit!")
end, {})
