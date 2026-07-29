import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure SeriesConvergencePackage where
  seriesType : Type u
  termSequence : Nat → seriesType
  partialSums : Nat → seriesType
  sumLimit : seriesType
  convergence : Prop
  absoluteConvergence : Prop

structure SeriesConvergenceEvidence (S : SeriesConvergencePackage) where
  convergenceClosed : S.convergence
  absoluteConvergenceClosed : S.absoluteConvergence

def SeriesConvergenceClosed (S : SeriesConvergencePackage) : Prop :=
  S.convergence ∧ S.absoluteConvergence

theorem series_convergence_closed_from_evidence (S : SeriesConvergencePackage) (E : SeriesConvergenceEvidence S) : SeriesConvergenceClosed S := by
  exact And.intro E.convergenceClosed E.absoluteConvergenceClosed

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
