# Meson Grammar for Tree-sitter

This is a grammar for The Meson [Build System][1] for [Tree-sitter][2].

## Alternative Grammar

There is [another Tree-sitter grammar][4] for Meson already in existence.
You might ask then, why did we undertake to make a new one?

* Several bugs were found in that existing grammar
* That grammar has significant departures from the official grammar 
* We believed that a fresh start working from the official grammar would
  give better results more quickly.

We put this grammar together in about 2 hours, working solely from the
the official Meson documentation and the grammar.   We think the results
are more satisfactory and provide a better base to build on for our needs.

## Source Material

This grammar is based on the [official Meson grammar][3] which we
presume to be accurate.  (We did find at least two errors in the grammar:
there is a reference to an `assignment_expression` but no rule for that
exists, and there is no grammar for format strings (which we call "fstrings").

The following bugs were found in the documented grammar which we have fixed here:

1. The `assignment_expression` is referenced but not defined.

2. No grammar rule for format strings (we assume format like f'content' or f'''content'''.

3. Jump statements (`break` and `continue`) can appear inside if branches (when the if
   statement itself is nested within a `foreach`.) We refine this a bit to limit their
   appearance to the last statement of a given branch (as nothing after them would be
   executed anyway.)

That whole grammar is repeated below:
```
This is the full Meson grammar, as it is used to parse Meson build definition files:

additive_expression: multiplicative_expression | (additive_expression additive_operator multiplicative_expression)
additive_operator: "+" | "-"
argument_list: positional_arguments ["," keyword_arguments] | keyword_arguments
array_literal: "[" [expression_list] "]"
assignment_statement: expression asssignment_operator expression
assignment_operator: "=" | "*=" | "/=" | "%=" | "+=" | "-="
boolean_literal: "true" | "false"
build_definition: (NEWLINE | statement)*
condition: expression
conditional_expression: logical_or_expression | (logical_or_expression "?" expression ":" assignment_expression
decimal_literal: DECIMAL_NUMBER
DECIMAL_NUMBER: /[1-9][0-9]*/
dictionary_literal: "{" [key_value_list] "}"
equality_expression: relational_expression | (equality_expression equality_operator relational_expression)
equality_operator: "==" | "!="
expression: conditional_expression | logical_or_expression
expression_list: expression ("," expression)*
expression_statement: expression
function_expression: id_expression "(" [argument_list] ")"
hex_literal: "0x" HEX_NUMBER
HEX_NUMBER: /[a-fA-F0-9]+/
id_expression: IDENTIFIER
IDENTIFIER: /[a-zA-Z_][a-zA-Z_0-9]*/
identifier_list: id_expression ("," id_expression)*
integer_literal: decimal_literal | octal_literal | hex_literal
iteration_statement: "foreach" identifier_list ":" id_expression NEWLINE (statement | jump_statement)* "endforeach"
jump_statement: ("break" | "continue") NEWLINE
key_value_item: expression ":" expression
key_value_list: key_value_item ("," key_value_item)*
keyword_item: id_expression ":" expression
keyword_arguments: keyword_item ("," keyword_item)*
literal: integer_literal | string_literal | boolean_literal | array_literal | dictionary_literal
logical_and_expression: equality_expression | (logical_and_expression "and" equality_expression)
logical_or_expression: logical_and_expression | (logical_or_expression "or" logical_and_expression)
method_expression: postfix_expression "." function_expression
multiplicative_expression: unary_expression | (multiplicative_expression multiplicative_operator unary_expression)
multiplicative_operator: "*" | "/" | "%"
octal_literal: "0o" OCTAL_NUMBER
OCTAL_NUMBER: /[0-7]+/
positional_arguments: expression ("," expression)*
postfix_expression: primary_expression | subscript_expression | function_expression | method_expression
primary_expression: literal | ("(" expression ")") | id_expression
relational_expression: additive_expression | (relational_expression relational_operator additive_expression)
relational_operator: ">" | "<" | ">=" | "<=" | "in" | ("not" "in")
selection_statement: "if" condition NEWLINE (statement)* ("elif" condition NEWLINE (statement)*)* ["else" (statement)*] "endif"
statement: (expression_statement | selection_statement | iteration_statement | assignment_statement) NEWLINE
string_literal: ("'" STRING_SIMPLE_VALUE "'") | ("'''" STRING_MULTILINE_VALUE "'''")
STRING_MULTILINE_VALUE: \.*?(''')\
STRING_SIMPLE_VALUE: \.*?(?<!\\)(\\\\)*?'\
subscript_expression: postfix_expression "[" expression "]"
unary_expression: postfix_expression | (unary_operator unary_expression)
unary_operator: "not" | "+" | "-"
```

[1]: https://mesonbuild.com "The Meson Build System"
[2]: https://tree-sitter.github.io/tree-sitter/ "Tree-sitter Web Site"
[3]: https://mesonbuild.com/Syntax.html#grammar "Meson Grammar"
[4]: https://github.com/Decodetalkers/tree-sitter-meson "Decodetalkers Meson grammar"