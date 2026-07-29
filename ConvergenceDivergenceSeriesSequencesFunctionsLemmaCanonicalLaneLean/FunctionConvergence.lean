import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure FunctionSequencePackage where
  functions : ℕ → (ℝ → ℝ)
  pointwiseLimit : ℝ → ℝ
  pointwiseConvergence : Prop
  pointwiseDefinition : pointwiseConvergence → ∀ x, Filter.Tendsto (λ n => functions n x) Filter.atTop (𝓝 (pointwiseLimit x))

structure FunctionSequenceEvidence (F : FunctionSequencePackage) where
  pointwiseConvergenceClosed : F.pointwiseConvergence
  pointwiseDefinitionClosed : F.pointwiseDefinition F.pointwiseConvergence

def PointwiseConvergenceClosed (F : FunctionSequencePackage) : Prop :=
  F.pointwiseConvergence ∧ F.pointwiseDefinition F.pointwiseConvergence

theorem pointwise_convergence_closed_from_evidence (F : FunctionSequencePackage) (E : FunctionSequenceEvidence F) : PointwiseConvergenceClosed F :=
  And.intro E.pointwiseConvergenceClosed E.pointwiseDefinitionClosed

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
