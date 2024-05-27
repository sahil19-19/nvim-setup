local ls = require("luasnip")
local t  = ls.text_node
local s = ls.snippet
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt
local c = ls.choice_node
local f = ls.function_node
local d = ls.dynamic_node
local sn = ls.snippet_node

vim.keymap.set({ "i", "s" }, "<a-n>", function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end)

vim.keymap.set({ "i", "s" }, "<a-K>", function()
    if ls.expand_or_jumpable() then
        ls.expand_or_jump()
    end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<a-J>", function()
    if ls.jumpable(-1) then
        ls.jump(-1)
    end
end, { silent = true })

require("luasnip").config.set_config({ -- Setting LuaSnip config

  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Use Tab (or some other key if you prefer) to trigger visual selection
  -- store_selection_keys = "<Tab>",
})
