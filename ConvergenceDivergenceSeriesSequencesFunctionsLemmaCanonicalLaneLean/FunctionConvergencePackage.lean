import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure FunctionConvergencePackage where
  functions : ℕ → ℝ → ℝ
  limitFunction : ℝ → ℝ
  domain : Set ℝ
  pointwiseConvergenceCondition : Prop
  uniformConvergenceCondition : Prop

structure FunctionConvergenceEvidence (F : FunctionConvergencePackage) where
  pointwiseClosed : F.pointwiseConvergenceCondition
  uniformClosed : F.uniformConvergenceCondition

def FunctionConvergenceClosed (F : FunctionConvergencePackage) : Prop :=
  F.pointwiseConvergenceCondition ∧ F.uniformConvergenceCondition

theorem function_convergence_closed_from_evidence
    (F : FunctionConvergencePackage) (E : FunctionConvergenceEvidence F) :
    FunctionConvergenceClosed F := by
  exact And.intro E.pointwiseClosed E.uniformClosed

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse