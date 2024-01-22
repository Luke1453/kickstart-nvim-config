-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)

-- See the kickstart.nvim README for more information
return {
  --{
  --"jose-elias-alvarez/null-ls.nvim",
  --ft = "go",
  --opts = function ()
  --return require "custom.plugins.configs.go-null-ls"
  --end,
  --},
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end
  },
};

