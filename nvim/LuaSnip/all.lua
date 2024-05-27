local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
    -- A snippet that expands the trigger "hi" into the string "Hello, world!".
    -- require("luasnip").snippet(
    --     { trig = "hi" },
    --     { require("luasnip").text_node("Hello, world!") }
    -- ),
    s("hi", {
        t("hello babe")
    })

    -- To return multiple snippets, use one `return` statement per snippet file
    -- and return a table of Lua snippets.
    -- require("luasnip").snippet(
    --     { trig = "foo" },
    --     { require("luasnip").text_node("Another snippet.") }
    -- ),
}
