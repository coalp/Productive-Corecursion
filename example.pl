% :- load_files([s_reso_minimal]).
:- load_files([co_s_reso_minimal]).

% 1
blink([0,1|B]):- blink(B).
% 2
bad_unif(f(X),X) :- bad_unif(X,X).

% 3
tree_p(f(B,C)) :- tree_q(B),tree_r(C).
tree_q(z).
tree_r(f(D,A)) :- tree_t(D), tree_p(A).
tree_t(s(D)) :- tree_t(D).

% 4
tree_g(g(A,B)) :- tree_f(A), tree_g(B).
tree_f(f(A,B)) :- tree_g(B), tree_f(A).
