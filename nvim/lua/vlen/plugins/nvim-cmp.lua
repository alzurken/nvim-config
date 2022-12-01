local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
  return
end

local snip_status, luasnip = pcall(require, "luasnip")
if not snip_status then
  return
end

require("luasnip/loaders/from_vscode").lazy_load()

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = {
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), {"i", "c"}),
    ["<C-y>"] = cmp.config.disable,
    ["<C-e>"] = cmp.mapping{
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    },
    ["<CR>"] = cmp.mapping.confirm {select = true},
  },
  formatting = {
    fields = {"kind", "abbr", "menu"},
    format = function(entry, vim_item)
      vim_item.kind = " ";
      vim_item.menu = ({
        luasnip = "[Snippet]",
        buffer = "[Buffer]",
        path = "[Path]",
        fuzzy_buffer = "[Fuzzy]",
        fuzzy_path = "[Fuzzy]",
        plugins = "[Plugins]",
      })[entry.source.name]
      return vim_item
    end,
  },
  sources = {
    {name = "luasnip", keyword_length = 2},
    {name = "buffer"},
    {name = "path"},
    {name = "git", keyword_length = 2},
    {name = "conventinalcommits", keyword_length = 3},
    {name = "fuzzy_buffer", keyword_length = 3},
    {name = "fuzzy_path", keyword_length = 3},
    {name = "rg", keyword_length = 3},
    {name = "nvim_lua", keyword_length = 3},
    {name = "plugins", keyword_length = 3},
    {name = "treesitter", keyword_length = 3},
  },
  confirm_opts = {
    behavior = cmp.ConfirmBehavior.Replace,
    select = false,
  },
  experimantal = {
    ghost_text = false,
    native_menu = false,
  }
}

cmp.setup.filetype("gitcommit", {
  sources = {
    {name = "commit"},
  }
})
