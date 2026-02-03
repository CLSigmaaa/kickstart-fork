return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "marilari88/neotest-vitest",
  },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-vitest")({
          -- Filter directories when searching for test files
          filter_dir = function(name, rel_path, root)
            return name ~= "node_modules"
          end,
        }),
      }
    })
  end,
  keys = {
    { "<leader>tt", function() require("neotest").run.run() end, desc = "Run Nearest Test" },
    { "<leader>tf", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Test File" },
    { "<leader>ts", function() require("neotest").summary.toggle() end, desc = "Toggle Tests Summary" },
    { "<leader>to", function() require("neotest").output.open({ enter = true }) end, desc = "Show Tests Output" },
  },
}