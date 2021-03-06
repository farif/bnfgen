type symbol = Terminal of string | Nonterminal of string
type rule_part = { weight : int; symbols : symbol list; }
type rule = { lhs : string; rhs : rule_part list; }
type grammar = rule list
val string_of_rules : rule list -> string
val sort_rule_parts : rule_part list -> rule_part list
val check_grammar : grammar -> (grammar, string) result
val reduce : ?max_depth:int option -> ?start_symbol:string -> ?separator:string -> grammar -> (string, string) result
