local lsp_config = require("snowboy.lsp-config");

require("lspconfig").tsserver.setup(lsp_config())
require("lspconfig").graphql.setup(lsp_config())
