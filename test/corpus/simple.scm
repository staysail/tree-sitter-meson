================================================================================
Simple test
================================================================================
project('tutorial', 'c')
executable('demo', 'main.c')

--------------------------------------------------------------------------------

(build_definition
  (statement
    (expression_statement
      (expression
        (function_expression
          (identifier)
          (argument
            (expression
              (string_literal)))
          (argument
            (expression
              (string_literal)))))))
  (statement
    (expression_statement
      (expression
        (function_expression
          (identifier)
          (argument
            (expression
              (string_literal)))
          (argument
            (expression
              (string_literal))))))))
