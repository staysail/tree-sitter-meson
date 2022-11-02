================================================================================
Simple strings
================================================================================
x = 'abc'

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (string_literal)))))

================================================================================
Various escape sequences
================================================================================

x = 'Escape \x1B or \a (bell),  \b (backspace), \f (formfeed), \n, \t, etc.'

x = 'They can also use \u1234 or \U00001234 unicode, or \N{ampersand} named characters.'

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (string_literal
          (escape_sequence)
          (escape_sequence)
          (escape_sequence)
          (escape_sequence)
          (escape_sequence)
          (escape_sequence)))))
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (string_literal
          (escape_sequence)
          (escape_sequence)
          (escape_sequence))))))

================================================================================
Multiline strings
================================================================================

x = '''This string
spans
several lines'''

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (string_literal)))))
