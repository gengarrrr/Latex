open HolKernel Parse boolLib bossLib;

open arithmeticTheory numLib pairTheory fcpTheory fcpLib wordsTheory wordsLib listTheory listLib sortingTheory pred_setTheory combinTheory hurdUtils;

open measureTheory probabilityTheory extreal_baseTheory;

open des_propTheory;
val _ = new_theory "paper";



val _ = export_theory ();
