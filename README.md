# Productive-Corecursion
As a combination of [structural resolution](s_reso_minimal.pl) and a restricted form of loop detection, co-S-resolution is sound regarding SLD computations at infinity.

"[co-S-resolution](co_s_reso_minimal.pl) = Logic + Control" where logic includes
* [rewriting reduction and substitution reduction with occurs check](search_rule.pl), and
* [restricted loop detection](loop_detect.pl): without occurs check, a subgoal A is coinductively proved if it unifies an (instantiated) ancester subgoal B and also A subsumes a variant of B,

and the control is 
* left first computation rule, and
* depth first search in SLD tree.

## Example Run
1. Install [SWI-Prolog](http://www.swi-prolog.org/)
2. Download this repository to your computer.
3. We take [example.pl](example.pl) here. On your computer, open example.pl with SWI-Prolog. The interactive interpreter will start with all program files loaded. 
4. Type in the interpreter a goal `clause_tree(blink(A)).`and hit Enter key. Since `blink/1` program is observationally productive and universal, co-S-resolution can compute a finite representation of a infinite term `A=[0,1|A]` which is SLD computable at infinity.  
