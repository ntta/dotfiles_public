local colorscheme = "gruvbox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

vim.o.background = "dark"
vim.api.nvim_set_var("gruvbox_bold", "0")
vim.api.nvim_set_var("gruvbox_contrast_dark", "hard")
