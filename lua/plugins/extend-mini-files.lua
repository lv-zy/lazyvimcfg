return {
  "echasnovski/mini.files",
  keys = {
    {
      "<leader>e",
      function()
        require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
      end,
      desc = "Open mini.files (directory of current file)",
    },
    {
      "<leader>E",
      function()
        require("mini.files").open(vim.uv.cwd(), true)
      end,
      desc = "Open mini.files (cwd)",
    },
    {
      "<leader>fm",
      function()
        require("mini.files").open(LazyVim.root(), true)
      end,
      desc = "Open mini.files (root)",
    },
  },
  opts = {
    mappings = {
      close = "<Esc>",
    },
    windows = {
      width_nofocus = 20,
      width_focus = 50,
      width_preview = 100,
    },
    options = {
      use_as_default_explorer = true,
    },
  },
  -- config = function()
  --   -- 给 mini.files buffer 设置 Esc 关闭
  --   vim.api.nvim_create_autocmd("FileType", {
  --     pattern = "mini.files",
  --     callback = function()
  --       vim.api.nvim_buf_set_keymap(0, "n", "<Esc>", ":q<CR>", { noremap = true, silent = true })
  --     end,
  --   })
  -- end,
}

