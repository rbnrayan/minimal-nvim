local npairs = require('nvim-autopairs')
local Rule = require('nvim-autopairs.rule')

npairs.remove_rule("'", "'", "ocaml")
npairs.add_rules {
    Rule("'", '', { 'ocaml', 'menhir', 'ocamlinterface', 'ocamllex', 'reason', 'dune' })
}
