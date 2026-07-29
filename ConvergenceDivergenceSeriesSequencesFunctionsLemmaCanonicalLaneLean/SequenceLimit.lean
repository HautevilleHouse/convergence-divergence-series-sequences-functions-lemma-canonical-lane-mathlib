import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure SequenceLimitPackage where
  sequenceType : Type u
  limitPoint : sequenceType
  convergence : Prop
  epsilonChoice : Prop
  indexBound : Prop

structure SequenceLimitEvidence (S : SequenceLimitPackage) where
  convergenceClosed : S.convergence
  epsilonChoiceClosed : S.epsilonChoice
  indexBoundClosed : S.indexBound

def SequenceLimitClosed (S : SequenceLimitPackage) : Prop :=
  S.convergence ∧ S.epsilonChoice ∧ S.indexBound

theorem sequence_limit_closed_from_evidence (S : SequenceLimitPackage) (E : SequenceLimitEvidence S) : SequenceLimitClosed S := by
  exact And.intro E.convergenceClosed (And.intro E.epsilonChoiceClosed E.indexBoundClosed)

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
