import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure ComparisonTestPackage where
  seriesA : SeriesPackage
  seriesB : SeriesPackage
  inequality : ∀ n, 0 ≤ seriesA.termSequence n ∧ seriesA.termSequence n ≤ seriesB.termSequence n
  divergenceA : Prop
  convergenceB : Prop
  testResult : Prop
  testConclusion : (divergenceA → ¬ seriesB.convergence) ∧ (convergenceB → seriesA.convergence)

structure ComparisonTestEvidence (C : ComparisonTestPackage) where
  inequalityClosed : C.inequality
  testConclusionClosed : C.testConclusion

def ComparisonTestClosed (C : ComparisonTestPackage) : Prop :=
  C.inequality ∧ C.testConclusion

theorem comparison_test_closed_from_evidence (C : ComparisonTestPackage) (E : ComparisonTestEvidence C) : ComparisonTestClosed C :=
  And.intro E.inequalityClosed E.testConclusionClosed

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
