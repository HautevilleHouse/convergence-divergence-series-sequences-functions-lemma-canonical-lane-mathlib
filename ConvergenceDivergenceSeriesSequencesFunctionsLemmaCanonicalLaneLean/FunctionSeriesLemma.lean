import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure FunctionSeriesLemmaPackage where
  functionFamily : Type u
  seriesFormed : Prop
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  testLemma : Prop

structure FunctionSeriesLemmaEvidence (F : FunctionSeriesLemmaPackage) where
  seriesFormedClosed : F.seriesFormed
  pointwiseConvergenceClosed : F.pointwiseConvergence
  uniformConvergenceClosed : F.uniformConvergence
  testLemmaClosed : F.testLemma

def FunctionSeriesLemmaClosed (F : FunctionSeriesLemmaPackage) : Prop :=
  F.seriesFormed ∧ F.pointwiseConvergence ∧ F.uniformConvergence ∧ F.testLemma

theorem function_series_lemma_closed_from_evidence (F : FunctionSeriesLemmaPackage)
    (E : FunctionSeriesLemmaEvidence F) : FunctionSeriesLemmaClosed F :=
  And.intro E.seriesFormedClosed
    (And.intro E.pointwiseConvergenceClosed
      (And.intro E.uniformConvergenceClosed E.testLemmaClosed))

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse