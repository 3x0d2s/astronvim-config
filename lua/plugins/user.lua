-- You can also add or configure plugins by creating files in this `plugins/` folder

---@type LazySpec
return {
  {
    "brenton-leighton/multiple-cursors.nvim",
    dependencies = {
      {
        "AstroNvim/astrocore",
        opts = function(_, opts)
          local maps = opts.mappings
          for lhs, map in pairs {
            ["<C-Down>"] = nil,
            ["<C-Up>"] = nil,
            ["<C-LeftMouse>"] = nil,
            ["<A-Down>"] = { "<Cmd>MultipleCursorsAddDown<CR>", desc = "Add cursor down" },
            ["<A-Up>"] = { "<Cmd>MultipleCursorsAddUp<CR>", desc = "Add cursor up" },
            ["<A-LeftMouse>"] = { "<Cmd>MultipleCursorsMouseAddDelete<CR>", desc = "Add cursor with mouse" },
          } do
            maps.n[lhs] = map
            maps.i[lhs] = map
          end
        end,
      },
    },
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
    },
  },
}
