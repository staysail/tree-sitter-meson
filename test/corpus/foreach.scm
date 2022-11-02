================================================================================
Foreach with array
================================================================================

progs = [['prog1', ['prog1.c', 'foo.c']],
         ['prog2', ['prog2.c', 'bar.c']]]

foreach p : progs
  exe = executable(p[0], p[1])
  test(p[0], exe)
endforeach

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
                    (string_literal))))))))))
  (statement
    (iteration_statement
      (foreach)
      (identifier_list
        (identifier))
      (identifier)
      (statement_list
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
                    (subscript_expression
                      (expression
                        (identifier))
                      (expression
                        (int_literal)))))
                (argument
                  (expression
                    (subscript_expression
                      (expression
                        (identifier))
                      (expression
                        (int_literal)))))))))
        (statement
          (expression_statement
            (expression
              (function_expression
                (identifier)
                (argument
                  (expression
                    (subscript_expression
                      (expression
                        (identifier))
                      (expression
                        (int_literal)))))
                (argument
                  (expression
                    (identifier))))))))
      (endforeach))))

================================================================================
Foreach with dictionary
================================================================================
foreach name, sources : components
  if conf.get('USE_@0@'.format(name.to_upper()), 0) == 1
    sources_to_compile += sources
  endif
endforeach

--------------------------------------------------------------------------------

(build_definition
  (statement
    (iteration_statement
      (foreach)
      (identifier_list
        (identifier)
        (identifier))
      (identifier)
      (statement_list
        (statement
          (selection_statement
            (if)
            (condition
              (expression
                (equality_expression
                  (expression
                    (method_expression
                      (expression
                        (identifier))
                      (function_expression
                        (identifier)
                        (argument
                          (expression
                            (method_expression
                              (expression
                                (string_literal))
                              (function_expression
                                (identifier)
                                (argument
                                  (expression
                                    (method_expression
                                      (expression
                                        (identifier))
                                      (function_expression
                                        (identifier)))))))))
                        (argument
                          (expression
                            (int_literal))))))
                  (equality_operator)
                  (expression
                    (int_literal)))))
            (statement_list
              (statement
                (assignment_statement
                  (expression
                    (identifier))
                  (assignment_operator)
                  (expression
                    (identifier)))))
            (endif))))
      (endforeach))))

================================================================================
Foreach break and continue
================================================================================

items = ['a', 'continue', 'b', 'break', 'c']
result = []
foreach i : items
  if i == 'continue'
    continue
  elif i == 'break'
    break
  endif
  result += i
endforeach

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
            (string_literal))
          (expression
            (string_literal))
          (expression
            (string_literal))
          (expression
            (string_literal))
          (expression
            (string_literal))))))
  (statement
    (assignment_statement
      (expression
        (identifier))
      (assignment_operator)
      (expression
        (array_literal))))
  (statement
    (iteration_statement
      (foreach)
      (identifier_list
        (identifier))
      (identifier)
      (statement_list
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
                (continue)))
            (elif)
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
                (break)))
            (endif)))
        (statement
          (assignment_statement
            (expression
              (identifier))
            (assignment_operator)
            (expression
              (identifier)))))
      (endforeach))))
