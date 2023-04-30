-- these are custom configs for lsp. Add this file in your "custom/configs" directory in your NvChad setup files according to what lsp settings you require

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "intelephense", "emmet_ls", "tailwindcss", "tsserver"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.intelephense.setup {

  init_options = {
      globalStoragePath = "/usr/bin/intelephense",
      licenseKey = "~/intelephense/license.txt",
  },

  settings = {
    intelephense = {
      cmd = {
        "intelephense", "--stdio",
      },
      filetypes = {
        "php", "phtml"
      },
    }
  }
}

lspconfig.emmet_ls.setup {

  settings = {
    emmet_ls = {
      cmd = {
        "emmet_ls", "--stdio",
      },
      filetypes = {
        "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "eruby", "php", "phtml"
      },
      single_file_support = true,
    }
  }
}

lspconfig.tailwindcss.setup {

  settings = {
    tailwindCSS = {
      classAttributes = { "class", "className", "classList", "ngClass" },
      lint = {
        cssConflict = "warning",
        invalidApply = "error",
        invalidConfigPath = "error",
        invalidScreen = "error",
        invalidTailwindDirective = "error",
        invalidVariant = "error",
        recommendedVariantOrder = "warning"
      },
      validate = true,
      cmd = {
       "tailwindcss-language-server", "--stdio"
      },
      filetypes = {
      "aspnetcorerazor", "astro", "astro-markdown", "blade", "clojure", "django-html", "htmldjango", "edge", "eelixir", "elixir", "ejs", "erb", "eruby", "gohtml", "haml", "handlebars", "hbs", "html", "html-eex", "heex", "jade", "leaf", "liquid", "markdown", "mdx", "mustache", "njk", "nunjucks", "razor", "slim", "twig", "css", "less", "postcss", "sass", "scss", "stylus", "sugarss", "javascript", "javascriptreact", "reason", "rescript", "typescript", "typescriptreact", "vue", "svelte"
      },
    },
  }
}

lspconfig.tsserver.setup {

  settings = {
    tsserver = {
      cmd = {
        "typescript-language-server", "--stdio",
      },
      filetypes = {
        "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx",
      },
      init_options = {
        hostInfo = "neovim"
      },
      single_file_support = true
    }
  }
}

lspconfig.html.setup {

  settings = {
    html = {
      cmd = {
        "vscode-html-language-server", "--stdio",
      },
      filetypes = {
        "html"
      },
      init_options = {
        configurationSection = { "html", "css", "javascript" },
        embeddedLanguages = {
          css = true,
          javascript = true
        },
      provideFormatter = true
      },
      single_file_support = true
    }
  }
}

lspconfig.cssls.setup {

  settings = {
    cssls = {
      cmd = {
        "vscode-css-language-server", "--stdio",
      },
      filetypes = {
        "css", "scss", "less"
      },
      css = {
        validate = true
      },
      less = {
        validate = true
      },
      scss = {
        validate = true
      },
      single_file_support = true
    }
  }
}


