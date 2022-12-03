flutter_tools = require("flutter-tools")

local lsp_config = require("snowboy.lsp-config");

flutter_tools.setup {
  ui = {
    -- the border type to use for all floating windows, the same options/formats
    -- used for ":h nvim_open_win" e.g. "single" | "shadow" | {<table-of-eight-chars>}
    border = "rounded",
    -- This determines whether notifications are show with `vim.notify` or with the plugin's custom UI
    -- please note that this option is eventually going to be deprecated and users will need to
    -- depend on plugins like `nvim-notify` instead.
  },
  widget_guides = {
    enabled = true,
  },
  closing_tags = {
    highlight = "Comment", -- highlight for the closing tag
    prefix = "//", -- character to use for close tag e.g. > Widget
    enabled = true -- set to false to disable
  },
  lsp = lsp_config(),
}
