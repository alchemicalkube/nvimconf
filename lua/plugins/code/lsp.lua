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
                        gofumpt = true,
                        staticcheck = true,
                        usePlaceholders = true,
                        completeUnimported = true,
                        completeFunctionCalls = true,
                        semanticTokens = true,
                        hoverKind = "FullDocumentation"
                    },
                },
                on_attach = function(client, bufnr)
                    if client.server_capabilities.documentFormattingProvider then
                        vim.api.nvim_create_autocmd("BufWritePre", {
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({ async = false })
                        end,
                    })
                    end
                end,
            })
            -------------
            --- GoLang
            -------------

            -------------
            --- Lua
            -------------
            vim.lsp.enable("lua_ls")
            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        runtime = {
                            version = "LuaJIT"
                        },
                        diagnostics = { globals = { "vim" } },
                        workspace = {
                            library = vim.api.nvim_get_runtime_file("", true),
                        },
                    },
                },
            })
            -------------
            --- Lua
            -------------
        end,
    },
}
