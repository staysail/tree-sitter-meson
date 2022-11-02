; highlights.scm
;
; Copyright 2022 Staysail Systems, Inc.
;
; Distributed under the MIT License.
; (See accompanying file LICENSE.txt or https://opensource.org/licenses/MIT)
; SPDX-License-Identifier: MIT
;
; These highlights are for the Nova editor.
;
(comment) @comment

; these are listed first, because they override keyword queries
(function_expression (identifier) @identifier.function)

; TODO: identify "project()" and possibly other special functions
; Also, we can add builtin objects and discriminate between types
; method and function calls.

[
    (assignment_operator)
    (additive_operator)
    (multiplicative_operator)
    (equality_operator)
    (relational_operator)
    ">="
    "<="
    "<"
    ">"
    "+"
    "-"
] @operator

[
    (or)
    (and)
    (not)
    (in)
] @keyword.operator

[
    "(" ")" "[" "]" "{" "}"
] @bracket

[
    (if)
    (elif)
    (else)
    (endif)
] @keyword.control

[
    (foreach)
    (endforeach)
    (break)
    (continue)
] @keyword.control

(boolean_literal) @value.boolean
(int_literal) @value.number

(keyword_argument keyword: (identifier) @identifier.key)
(escape_sequence) @value.entity
(bad_escape) @invalid

[
"."
","
":"
] @punctuation.delimiter

[
    (string_literal)
    (fstring_literal)
] @string

(identifier) @identifier

