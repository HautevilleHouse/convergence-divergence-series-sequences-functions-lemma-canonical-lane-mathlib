import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure PowerSeriesPackage where
  coefficientSequence : Nat → ℝ
  center : ℝ
  radiusOfConvergence : ℝ
  intervalOfConvergence : Set ℝ
  convergenceOnInterval : Prop

structure PowerSeriesEvidence (P : PowerSeriesPackage) where
  radiusConvergenceClosed : P.radiusOfConvergence ≥ 0
  convergenceOnIntervalClosed : P.convergenceOnInterval

def PowerSeriesClosed (P : PowerSeriesPackage) : Prop :=
  P.radiusOfConvergence ≥ 0 ∧ P.convergenceOnInterval

theorem power_series_closed_from_evidence (P : PowerSeriesPackage) (E : PowerSeriesEvidence P) : PowerSeriesClosed P := by
  exact And.intro E.radiusConvergenceClosed E.convergenceOnIntervalClosed

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
