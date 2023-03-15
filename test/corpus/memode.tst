=========================
test_mm_one_word_empty_last_line
=========================
hello


-------------------------

(document
(body
(paragraph
(expr))))

=========================
test_mm_one_word_empty_first_line
=========================

hello
-------------------------

(document
(body
(paragraph
(expr))))

=========================
test_one_word_empty_first_and_last_line
=========================

hello 

-------------------------

(document
(body
(paragraph
(expr))))


=========================
test_mm_comment_only_comment_sign_and_a_space
=========================

# 

----------------------

(document
(body
(comment
)))

=========================
test_mm_comment_only_comment_sign_then_eol
=========================

#

----------------------

(document
(body
(comment
)))

=========================
test_mm_comment_starting_with_two_hash_and_spaces_after
=========================

##    

----------------------

(document
(body
(comment
)))

=========================
test_mm_comment_single_word 
=========================

# hi

----------------------

(document
(body
(comment
(expr))))


=========================
test_mm_directive_simple 
=========================
#+simple: 

----------------------

(document
body: (body
directive: (directive
name: (expr))))

=========================
test_mm_directive_with_value 
=========================
#+simple: value is here

----------------------

(document
body: (body
directive: (directive
name: (expr)
value: (value (expr) (expr) (expr)))))

=========================
test_mm_directive_with_2_lines_two_with_value 
=========================
#+simple: value is here

#+simple: value is here

----------------------

(document
body: (body
directive: (directive
name: (expr)
value: (value (expr) (expr) (expr)))
directive: (directive
name: (expr)
value: (value (expr) (expr) (expr)))))
