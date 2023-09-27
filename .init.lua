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
    {
      "lunarvim/synthwave84.nvim",
      name = "synthwave84",
      config = function()
        require("synthwave84").setup {}
      end,
    },
{
      "ellisonleao/glow.nvim",
      name = "glow",
      lazy = false,
      config = function() require("glow").setup() end
},
    {
      "themaxmarchuk/tailwindcss-colors.nvim",
      name = "tailwindcss-colors",
      config = function() require("tailwindcss-colors").setup() end
    }
  },
  polish = function()
    run(":TSInstall svelte")
    run(":TSInstall typescript")
    run(":TSInstall javascript")
    run(":TSInstall rust")
    run(":MasonInstall eslint_d")
    run(":MasonInstall prettier")
    run(":MasonInstall svelte-language-server")
    run(":MasonInstall typescript-language-server")
  end,
}
