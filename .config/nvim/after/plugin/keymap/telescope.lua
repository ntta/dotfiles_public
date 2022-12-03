local Remap = require("snowboy.remap")
local nnoremap = Remap.nnoremap

nnoremap(";f", function()
    require("telescope.builtin").find_files()
end)

nnoremap(";b", function()
    require("telescope.builtin").buffers()
end)

nnoremap(";;", function()
    require("telescope.builtin").help_tags()
end)

nnoremap(";g", function()
    require("telescope.builtin").live_grep()
end)
