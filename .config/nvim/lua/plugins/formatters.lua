-- ~/.config/nvim/lua/plugins/conform.lua
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      javascript = { "prettierd" },
      typescript = { "prettierd" },
      javascriptreact = { "prettierd" },
      typescriptreact = { "prettierd" },
      json = { "prettierd" },
      html = { "prettierd" },
      css = { "prettierd" },
      yaml = { "prettierd" },
      markdown = { "prettierd" },
      -- Add more as needed
    },
    -- Optional: enable format on save
    format_on_save = function(bufnr)
      local ignore_filetypes = { "sql" }
      return not vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype)
    end,
  },
}
