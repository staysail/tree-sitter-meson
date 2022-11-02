================================================================================
Zero
================================================================================

var = 0

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (int_literal)))))

================================================================================
Simple decimal
================================================================================

var2 = 102

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (int_literal)))))

================================================================================
Hexadecimal
================================================================================
var2 = 0xF123

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (int_literal)))))

================================================================================
Octal
================================================================================
var2 = 0o12347

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (int_literal)))))

================================================================================
Simple binary math
================================================================================
var = 1 + 2
var = 3 * 4
var = 5 % 3

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (additive_expression
          (expression
            (int_literal))
          (additive_operator)
          (expression
            (int_literal))))))
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (multiplicative_expression
          (expression
            (int_literal))
          (multiplicative_operator)
          (expression
            (int_literal))))))
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (multiplicative_expression
          (expression
            (int_literal))
          (multiplicative_operator)
          (expression
            (int_literal)))))))

================================================================================
Negation
================================================================================

var = -3

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (unary_expression
          (unary_operator)
          (expression
            (int_literal)))))))

================================================================================
Posication?
================================================================================

var = +3

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (unary_expression
          (unary_operator)
          (expression
            (int_literal)))))))

================================================================================
Expression precdence
================================================================================

var = 1 + 2 * 3 - 5 % 2

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (additive_expression
          (expression
            (additive_expression
              (expression
                (int_literal))
              (additive_operator)
              (expression
                (multiplicative_expression
                  (expression
                    (int_literal))
                  (multiplicative_operator)
                  (expression
                    (int_literal))))))
          (additive_operator)
          (expression
            (multiplicative_expression
              (expression
                (int_literal))
              (multiplicative_operator)
              (expression
                (int_literal)))))))))

================================================================================
And with negation
================================================================================

var = 3 * -5

--------------------------------------------------------------------------------

(build_definition
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (multiplicative_expression
          (expression
            (int_literal))
          (multiplicative_operator)
          (expression
            (unary_expression
              (unary_operator)
              (expression
                (int_literal)))))))))
