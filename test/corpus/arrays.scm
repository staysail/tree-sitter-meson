================================================================================
Simple arrays
================================================================================
a = [ 1, 2, 3 ]

empty = []

one = [ 'one' ]

expr = [ 1 + 2 ]

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (array_literal
          (expression
            (int_literal))
          (expression
            (int_literal))
          (expression
            (int_literal))))))
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (array_literal))))
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (array_literal
          (expression
            (string_literal))))))
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (array_literal
          (expression
            (additive_expression
              (expression
                (int_literal))
              (additive_operator)
              (expression
                (int_literal)))))))))

================================================================================
Nested Arrays
================================================================================
progs = [['prog1', ['prog1.c', 'foo.c']],
         ['prog2', ['prog2.c', 'bar.c']]]

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (array_literal
          (expression
            (array_literal
              (expression
                (string_literal))
              (expression
                (array_literal
                  (expression
                    (string_literal))
                  (expression
                    (string_literal))))))
          (expression
            (array_literal
              (expression
                (string_literal))
              (expression
                (array_literal
                  (expression
                    (string_literal))
                  (expression
                    (string_literal)))))))))))

================================================================================
Dictionaries
================================================================================

a = { 'foo' : bob }

empty = {}

multi = { 'foo' : bar, 'bar': foo }

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (dictionary_literal
          (key_value_item
            (expression
              (string_literal))
            (expression
              (identifier)))))))
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (dictionary_literal))))
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (dictionary_literal
          (key_value_item
            (expression
              (string_literal))
            (expression
              (identifier)))
          (key_value_item
            (expression
              (string_literal))
            (expression
              (identifier))))))))
