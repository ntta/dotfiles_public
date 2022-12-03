local Remap = require("snowboy.remap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

local function config(_config)
	return vim.tbl_deep_extend("force", {
		on_attach = function()
			nnoremap("gD", function() vim.lsp.buf.declaration() end)
			nnoremap("gd", function() vim.lsp.buf.definition() end)
			nnoremap("K", function() vim.lsp.buf.hover() end)
			nnoremap("gi", function() vim.lsp.buf.implementation() end)
			nnoremap("<leader>cd", function() vim.diagnostic.open_float() end)
			nnoremap("<leader>ca", function() vim.lsp.buf.code_action() end)
			nnoremap("gr", function() vim.lsp.buf.references() end)
			nnoremap("<leader>gr", function() vim.lsp.buf.rename() end)
			inoremap("<C-k>", function() vim.lsp.buf.signature_help() end)

			nnoremap("<leader>vws", function() vim.lsp.buf.workspace_symbol() end)
			nnoremap("[d", function() vim.diagnostic.goto_next() end)
			nnoremap("]d", function() vim.diagnostic.goto_prev() end)
			nnoremap("<leader>co", function() vim.lsp.buf.code_action({
                filter = function(code_action)
                    if not code_action or not code_action.data then
                        return false
                    end

                    local data = code_action.data.id
                    return string.sub(data, #data - 1, #data) == ":0"
                end,
                apply = true
            }) end)

			nnoremap("<leader>f", function() vim.lsp.buf.format() end)
			nnoremap("<leader>wa", function() vim.lsp.buf.add_workspace_folder() end)
			nnoremap("<leader>wr", function() vim.lsp.buf.remove_workspace_folder() end)
			nnoremap("<leader>wl", function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end)
      end,
	}, _config or {})
end

return config
