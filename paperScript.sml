open HolKernel Parse boolLib bossLib;

open arithmeticTheory numLib pairTheory fcpTheory fcpLib wordsTheory wordsLib listTheory listLib sortingTheory pred_setTheory combinTheory hurdUtils;

open measureTheory probabilityTheory extreal_baseTheory;

open des_propTheory;

open EmitTeX;

val _ = new_theory "paper";

val _ = export_theory ();

(* Generate all theorems (and definitions) from some theories *)
val _ = let in
	OS.FileSys.remove "HOLdes.tex" handle e => {};
	OS.FileSys.remove "HOLdesXXprop.tex" handle e => {};
	OS.FileSys.remove "references.tex" handle e => {};

	EmitTeX.print_theories_as_tex_doc
	    ["des",
             "des_prop"]
	    "references" (* references.tex includes all other generated TeX files *)
    end;
