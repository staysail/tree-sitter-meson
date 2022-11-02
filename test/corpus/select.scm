================================================================================
Select statement
================================================================================
var1 = 1
var2 = 2
if var1 == var2 # Evaluates to false
  something_broke()
elif var3 == var2
  something_else_broke()
else
  everything_ok()
endif

opt = get_option('someoption')
if opt != 'foo'
  do_something()
endif

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (int_literal))))
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (int_literal))))
  (statement
    (selection_statement
      (if)
      (condition
        (expression
          (equality_expression
            (expression
              (identifier))
            (equality_operator)
            (ERROR
              (identifier))
            (comment)
            (expression
              (function_expression
                (identifier))))))
      (elif)
      (condition
        (expression
          (equality_expression
            (expression
              (identifier))
            (equality_operator)
            (expression
              (identifier)))))
      (statement_list
        (statement
          (expression_statement
            (expression
              (function_expression
                (identifier))))))
      (else)
      (statement_list
        (statement
          (expression_statement
            (expression
              (function_expression
                (identifier))))))
      (endif)))
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
              (string_literal)))))))
  (statement
    (selection_statement
      (if)
      (condition
        (expression
          (equality_expression
            (expression
              (identifier))
            (equality_operator)
            (expression
              (string_literal)))))
      (statement_list
        (statement
          (expression_statement
            (expression
              (function_expression
                (identifier))))))
      (endif))))

================================================================================
Nested If statements
================================================================================

if this
    build(this)
  if that
    build(that)
  else
    # inner else
    build(else_that)
  endif
endif

--------------------------------------------------------------------------------

(build_definition
  (statement
    (selection_statement
      (if)
      (condition
        (expression
          (identifier)))
      (statement_list
        (statement
          (expression_statement
            (expression
              (function_expression
                (identifier)
                (argument
                  (expression
                    (identifier)))))))
        (statement
          (selection_statement
            (if)
            (condition
              (expression
                (identifier)))
            (statement_list
              (statement
                (expression_statement
                  (expression
                    (function_expression
                      (identifier)
                      (argument
                        (expression
                          (identifier))))))))
            (else)
            (comment)
            (statement_list
              (statement
                (expression_statement
                  (expression
                    (function_expression
                      (identifier)
                      (argument
                        (expression
                          (identifier))))))))
            (endif))))
      (endif))))
