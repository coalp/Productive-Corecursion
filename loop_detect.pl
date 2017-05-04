:- set_prolog_flag(generate_debug_info, false).

find_loop(A,[B|_]) :-
  copy_term(B, B_copy),
  subsumes_term(A, B_copy),
  A = B.
find_loop(A,[_|C]) :- find_loop(A,C).
