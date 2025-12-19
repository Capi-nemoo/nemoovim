return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },

    event = { "BufReadPre", "BufNewFile" },

    config = function()
      --------------------------------------------------------------------------
      -- CAPABILITIES (for nvim-cmp autocompletion)
      --------------------------------------------------------------------------
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      local ok, cmp_lsp = pcall(require, "cmp_nvim_lsp")
      if ok then
        capabilities = cmp_lsp.default_capabilities(capabilities)
      end

      --------------------------------------------------------------------------
      -- ON_ATTACH (keymaps when LSP starts)
      --------------------------------------------------------------------------
      local on_attach = function(_, bufnr)
        local map = function(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
        end

        map("n", "gd", vim.lsp.buf.definition,        "Go to definition")
        map("n", "gr", vim.lsp.buf.references,        "References")
        map("n", "gi", vim.lsp.buf.implementation,    "Implementation")
        map("n", "K",  vim.lsp.buf.hover,             "Hover docs")
        map("n", "<leader>rn", vim.lsp.buf.rename,    "Rename")
        map("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")
      end

            --------------------------------------------------------------------------
      -- LSP CONFIGS (AQUÍ va lua_ls)
      --------------------------------------------------------------------------

      -- lua_ls (instalado por pacman)
      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
          },
        },
      })

      -- ACTIVA lua_ls
      vim.lsp.enable({ "lua_ls" })

      --------------------------------------------------------------------------
      -- MASON: AUTOMATIC SERVER INSTALLATION
      --------------------------------------------------------------------------
      require("mason-lspconfig").setup({
	      automatic_installation = true,  -- esto hace magia
	      ensure_installed = {
		      "pyright",        -- Python
		      "html",           -- HTML
		      "cssls",          -- CSS
		      "jsonls",         -- JSON
		      "yamlls",         -- YAML (muy usado en devops)
		      "bashls",         -- Bash scripting
		      "dockerls",       -- Dockerfile support
		      "docker_compose_language_service", -- Docker compose
		      "marksman",       -- Markdown
		      "terraformls",    -- Terraform (muy usado en infraestructura)
		      "rust_analyzer",  -- Rust (aunque no lo uses ahora, vale oro)
		      "clangd",         -- C / C++ (si algún día compilas cositas)
	      }

      })
    end,
  },
}

