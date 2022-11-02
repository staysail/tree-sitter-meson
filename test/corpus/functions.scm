================================================================================
Simple function
================================================================================
x = doit(123 + 4)

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (function_expression
          (identifier)
          (argument
            (expression
              (additive_expression
                (expression
                  (int_literal))
                (additive_operator)
                (expression
                  (int_literal))))))))))

================================================================================
Method
================================================================================

x = myobj.something('here') 

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (method_expression
          (expression
            (identifier))
          (function_expression
            (identifier)
            (argument
              (expression
                (string_literal)))))))))
