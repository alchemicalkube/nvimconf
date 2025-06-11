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
            vim.lsp.enable("gopls")
            vim.lsp.config("gopls", {
                settings = {
                    gopls = {
                        analyses = {
                            unusedparams = true,
                            unreachable = true,
                        },
                        staticcheck = true,
                        usePlaceholders = true,
                        completeUnimported = true,
                        completeFunctionCalls = true,
                        hoverKind = "FullDocumentation"
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