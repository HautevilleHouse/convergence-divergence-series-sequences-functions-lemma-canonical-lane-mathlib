import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure SeriesConvergencePackage where
  terms : ℕ → ℝ
  partialSums : ℕ → ℝ
  limit : ℝ
  convergenceCondition : Prop
  remainderBound : Prop

structure SeriesConvergenceEvidence (S : SeriesConvergencePackage) where
  convergenceConditionClosed : S.convergenceCondition
  remainderBoundClosed : S.remainderBound

def SeriesConvergenceClosed (S : SeriesConvergencePackage) : Prop :=
  S.convergenceCondition ∧ S.remainderBound

theorem series_convergence_closed_from_evidence
    (S : SeriesConvergencePackage) (E : SeriesConvergenceEvidence S) :
    SeriesConvergenceClosed S := by
  exact And.intro E.convergenceConditionClosed E.remainderBoundClosed

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse