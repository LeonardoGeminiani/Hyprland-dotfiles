return {
   {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      opts = {
         auto_install = true,
         ensure_installed = { "c", "cpp", "python", "lua", "vim", "javascript",
            "html", "css", "bash", "comment", "help", "tsx" },
         highlight = { enable = true },
         indent = { enable = true },
         autotag = { enable = true },
      }
   }
}
