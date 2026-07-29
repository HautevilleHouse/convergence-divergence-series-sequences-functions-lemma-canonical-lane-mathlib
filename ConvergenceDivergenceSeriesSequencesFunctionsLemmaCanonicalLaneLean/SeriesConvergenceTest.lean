import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemma

structure SeriesConvergenceTestPackage where
  summandType : Type u
  partialSumSequence : Nat → summandType
  absoluteConvergence : Prop
  ratioTestCondition : Prop
  rootTestCondition : Prop
  comparisonMajorant : Prop

structure SeriesConvergenceTestEvidence (S : SeriesConvergenceTestPackage) where
  absoluteConvergenceClosed : S.absoluteConvergence
  ratioTestConditionClosed : S.ratioTestCondition
  rootTestConditionClosed : S.rootTestCondition
  comparisonMajorantClosed : S.comparisonMajorant

def SeriesConvergenceTestClosed (S : SeriesConvergenceTestPackage) : Prop :=
  S.absoluteConvergence ∧ S.ratioTestCondition ∧ S.rootTestCondition ∧ S.comparisonMajorant

theorem series_convergence_test_closed_from_evidence (S : SeriesConvergenceTestPackage) (E : SeriesConvergenceTestEvidence S) :
    SeriesConvergenceTestClosed S := by
  exact And.intro E.absoluteConvergenceClosed (And.intro E.ratioTestConditionClosed (And.intro E.rootTestConditionClosed E.comparisonMajorantClosed))

end ConvergenceDivergenceSeriesSequencesFunctionsLemma
end HautevilleHouse