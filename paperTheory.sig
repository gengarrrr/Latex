signature paperTheory =
sig
  type thm = Thm.thm
  
  val paper_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [des_prop] Parent theory of "paper"
   
   
*)
end
