# Productive-Corecursion
As a ccmbination of [structural resolution](s_reso_minimal.pl) and a restricted form of loop detection, co-S-resolution is sound regarding SLD computations at infinity.

"[co-S-resolution](co_s_reso_minimal.pl) = Logic + Control" where logic includes
* [rewriting reduction and substitution reduction with occurs check](search_rule.pl), and
* [restricted loop detection](loop_detect.pl): without occurs check, a subgoal A is coinductively proved if it unifies an (instantiated) ancester subgoal B and also A subsumes a variant of B,
and the control is 
* left first computation rule, and
* depth first search in SLD tree.
