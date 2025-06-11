return {
    {
        "mason-org/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        }
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "gopls", "lua_ls" },
        },
    },
    {
        "neovim/nvim-lspconfig",
        opts = {
            ensure_installed = { "gopls", "lua_ls" },
        },
        config = function()
            -------------
            --- GoLang
            -------------
            local lspconfig = require("lspconfig")
            lspconfig.gopls.setup({
                settings = {
                    gopls = {
                        analyses = {
                            unusedparams = true,
                        },
                        staticcheck = true,
                        gofumpt = true,
                    },
                },
            })
            -------------
            --- GoLang
            -------------
            vim.lsp.enable('lua_ls')
        end,
    },
}