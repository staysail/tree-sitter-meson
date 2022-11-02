; Text object queries for Helix.
; We don't have functions per se, so only comment and argument objects are here.
; We would really like to have folding as well.
(comment) @comment.inside
(comment)+ @comment.around
[
	(argument)
	(keyword_argument)
] @parameter.inside
