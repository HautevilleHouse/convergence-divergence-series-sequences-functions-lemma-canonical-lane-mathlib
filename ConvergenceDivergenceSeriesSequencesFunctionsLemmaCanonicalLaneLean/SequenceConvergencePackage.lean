import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure SequenceConvergencePackage where
  sequence : ℕ → ℝ
  limit : ℝ
  epsilonCondition : ℝ → Prop
  indexBound : ℝ → ℕ → Prop

structure SequenceConvergenceEvidence (S : SequenceConvergencePackage) where
  epsilonConditionClosed : ∀ ε > 0, S.epsilonCondition ε
  indexBoundClosed : ∀ ε > 0, ∃ N : ℕ, S.indexBound ε N

def SequenceConvergenceClosed (S : SequenceConvergencePackage) : Prop :=
  ∀ ε > 0, S.epsilonCondition ε ∧ ∃ N : ℕ, S.indexBound ε N

theorem sequence_convergence_closed_from_evidence
    (S : SequenceConvergencePackage) (E : SequenceConvergenceEvidence S) :
    SequenceConvergenceClosed S := by
  intro ε hε
  exact And.intro (E.epsilonConditionClosed ε hε) (E.indexBoundClosed ε hε)

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse