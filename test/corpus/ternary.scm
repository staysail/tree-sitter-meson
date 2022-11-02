================================================================================
Ternary operator
================================================================================

x = testit() ? 1 : false

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (conditional_expression
          (expression
            (function_expression
              (identifier)))
          (expression
            (int_literal))
          (expression
            (boolean_literal)))))))

================================================================================
Ternary operator nested
================================================================================

x = one() ? 1 : two() ? 'two' : three() ? 'three' : 'unknown'

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (conditional_expression
          (expression
            (function_expression
              (identifier)))
          (expression
            (int_literal))
          (expression
            (conditional_expression
              (expression
                (function_expression
                  (identifier)))
              (expression
                (string_literal))
              (expression
                (conditional_expression
                  (expression
                    (function_expression
                      (identifier)))
                  (expression
                    (string_literal))
                  (expression
                    (string_literal)))))))))))
