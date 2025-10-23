return {
  "saghen/blink.cmp",

  opts = {
    keymap = {
      ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
      ["<C-e>"] = { "hide", "fallback" },
      ["<CR>"] = { "accept", "fallback" },

      ["<S-Tab>"] = { "select_prev", "fallback_to_mappings" },
      ["<Tab>"] = { "select_next", "fallback_to_mappings" },

      ["<Up>"] = { "select_prev", "fallback" },
      ["<Down>"] = { "select_next", "fallback" },
      ["<C-p>"] = { "select_prev", "fallback_to_mappings" },
      ["<C-n>"] = { "select_next", "fallback_to_mappings" },

      ["<C-b>"] = { "scroll_documentation_up", "fallback" },
      ["<C-f>"] = { "scroll_documentation_down", "fallback" },

      ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
    },
    completion = {
      ghost_text = {
        enabled = false,
      },
      list = {
        selection = {
          preselect = false,
        },
      },
    },
  },
}
