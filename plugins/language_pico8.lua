-- mod-version:1 -- lite-xl 2.00
local syntax = require "core.syntax"

syntax.add {
  files = "%.p8$",
  headers = "^pico-8 cartridge",
  comment = "--",
  patterns = {
    { pattern = { 'pico%-8 cartridge', '__lua__' }, type = "comment" },
    { pattern = { '__gfx__\n', '%z' },    type = "comment" },
    { pattern = { '"', '"', '\\' },       type = "string"   },
    { pattern = { "'", "'", '\\' },       type = "string"   },
    { pattern = { "%[%[", "%]%]" },       type = "string"   },
    { pattern = { "%-%-%[%[", "%]%]"},    type = "comment"  },
    { pattern = "%-%-.-\n",               type = "comment"  },
    { pattern = "-?0x%x+",                type = "number"   },
    { pattern = "-?%d+[%d%.eE]*",         type = "number"   },
    { pattern = "-?%.?%d+",               type = "number"   },
    { pattern = "%.%.%.?",                type = "operator" },
    { pattern = "[<>~=&|]=",              type = "operator" },
    { pattern = "[%+%-=/%*%^%%#<>]",      type = "operator" },
    { pattern = "[%a_][%w_]*%s*%f[(\"{]", type = "function" },
    { pattern = "[%a_][%w_]*",            type = "symbol"   },
    { pattern = "::[%a_][%w_]*::",        type = "function" },
  },
  symbols = {
    ["if"]       = "keyword",
    ["then"]     = "keyword",
    ["else"]     = "keyword",
    ["elseif"]   = "keyword",
    ["end"]      = "keyword",
    ["do"]       = "keyword",
    ["function"] = "keyword",
    ["repeat"]   = "keyword",
    ["until"]    = "keyword",
    ["while"]    = "keyword",
    ["for"]      = "keyword",
    ["break"]    = "keyword",
    ["return"]   = "keyword",
    ["local"]    = "keyword",
    ["in"]       = "keyword",
    ["not"]      = "keyword",
    ["and"]      = "keyword",
    ["or"]       = "keyword",
    ["goto"]     = "keyword",
    ["self"]     = "keyword2",
    ["true"]     = "literal",
    ["false"]    = "literal",
    ["nil"]      = "literal",
  },
}

