-- mod-version:1 -- lite-xl 2.00
local syntax = require "core.syntax"

syntax.add {
    files = {"%.ps1$", "%.psm1$", "%.psd1$", "%.ps1xml$", "%.pssc$", "%.psrc$", "%.cdxml$"},
    comment = "#",
    patterns = {
        {pattern = "#.*\n", type = "comment"},
        {pattern = [[\.]], type = "normal"},
        {pattern = {'"', '"'}, type = "string"},
        {pattern = {"'", "'"}, type = "string"},
        {pattern = "%f[%w_][%d%.]+%f[^%w_]", type = "number"},
        {pattern = "[%+=/%*%^%%<>!~|&,:]+", type = "operator"},
        {pattern = "%f[%S]%-[%w%-_]+", type = "function"},
        {pattern = "[%u][%a]+[%-][%u][%a]+", type = "function"},
        {pattern = "${.*}", type = "symbol"},
        {pattern = "$[%a_@*][%w_]*", type = "keyword2"},
        {pattern = "$[%$][%a]+", type = "keyword2"},
        {pattern = "[%a_][%w_]*", type = "symbol"}
    },
    symbols = {
        ["if"] = "keyword",
        ["else"] = "keyword",
        ["elseif"] = "keyword",
        ["switch"] = "keyword",
        ["default"] = "keyword",
        ["function"] = "keyword",
        ["filter"] = "keyword",
        ["workflow"] = "keyword",
        ["configuration"] = "keyword",
        ["class"] = "keyword",
        ["enum"] = "keyword",
        ["Parameter"] = "keyword",
        ["ValidateScript"] = "keyword",
        ["CmdletBinding"] = "keyword",
        ["try"] = "keyword",
        ["catch"] = "keyword",
        ["finally"] = "keyword",
        ["throw"] = "keyword",
        ["while"] = "keyword",
        ["for"] = "keyword",
        ["do"] = "keyword",
        ["until"] = "keyword",
        ["break"] = "keyword",
        ["continue"] = "keyword",
        ["foreach"] = "keyword",
        ["in"] = "keyword",
        ["return"] = "keyword",
        ["where"] = "function",
        ["select"] = "function",
        ["filter"] = "keyword",
        ["in"] = "keyword",
        ["trap"] = "keyword",
        ["param"] = "keyword",
        ["data"] = "keyword",
        ["dynamicparam"] = "keyword",
        ["begin"] = "function",
        ["process"] = "function",
        ["end"] = "function",
        ["exit"] = "function",
        ["inlinescript"] = "function",
        ["parallel"] = "function",
        ["sequence"] = "function",
        ["true"] = "literal",
        ["false"] = "literal",
        ["TODO"] = "comment",
        ["FIXME"] = "comment",
        ["XXX"] = "comment",
        ["TBD"] = "comment",
        ["HACK"] = "comment",
        ["NOTE"] = "comment"
    }
}
