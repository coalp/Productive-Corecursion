:- load_files([co_s_reso_minimal]).

% non-linear co-recursion
p(s(X)) :- p(X),p(X).

% bad/1 clause is true for every interpretation since it is logically equivalent
% to ''bad(X) or not bad(X)'', which in turn equivalents t TRUE.
% In fixed point semantics, every ground instance of bad(X) is in the gfp since
% for each ground instance bad(t) where t is a ground term, {t}\subseteq T({t}) where
% T is immediate consequence operator.
bad(X) :- bad(X).

from(X,[X|Y]) :- from(s(X),Y).

frome(X,[X|Y]) :- frome(s(X),Y),error(0).
error(1).
