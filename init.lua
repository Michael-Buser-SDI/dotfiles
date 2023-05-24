local function run(cmd)
  vim.schedule(function()
    vim.cmd(cmd);
  end)
end
return {
  mappings = {
    n = {
      ["<Tab>"] = false,
      ["<leader>fC"] = { function() require("telescope.builtin").grep_string() end, desc = "Search for word under cursor" },
      ["<leader>fc"] = { function() require("telescope.builtin").current_buffer_fuzzy_find() end, desc =
      "Search current buffer" },
      ["<S-l>"] = {
        function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
        desc = "Next buffer",
      },
      ["<S-h>"] = {
        function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
        desc = "Previous buffer",
      },
    }
  },

  colorscheme = "synthwave84",
  plugins = {
    -- {
    -- "folke/tokyonight.nvim",
    -- name = "tokyonight",
    -- config = function()
    -- require("tokyonight").setup {
    -- style = "moon",
    -- }
    -- end,
    -- },
    -- No Svelte support in LSP
    {
      "lunarvim/synthwave84.nvim",
      name = "synthwave84",
      config = function()
        require("synthwave84").setup {}
      end,
    },
    -- {
    -- "Mofiqul/dracula.nvim",
    -- name = "dracula",
    -- config = function()
    -- require("dracula").setup {}
    -- end
    -- },
  },
  polish = function()
    run(":TSInstall svelte")
    run(":TSInstall vue")
    run(":TSInstall typescript")
    run(":TSInstall javascript")
    run(":TSInstall rust")
    run(":MasonInstall eslint_d")
    run(":MasonInstall lua-language-server")
    run(":MasonInstall prettier")
    run(":MasonInstall svelte-language-server")
    run(":MasonInstall typescript-language-server")
    run(":MasonInstall vue-language-server")
  end,
}
