import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure FunctionLimitPackage where
  domain : Type u
  codomain : Type v
  functionSequence : ℕ → (domain → codomain)
  pointwiseLimit : domain → codomain
  uniformLimit : domain → codomain
  equicontinuity : Prop
  uniformConvergenceCriterion : Prop
  pointwiseConvergenceImpliesUniformUnderConditions : Prop

structure FunctionLimitEvidence (F : FunctionLimitPackage) where
  equicontinuityClosed : F.equicontinuity
  uniformConvergenceCriterionClosed : F.uniformConvergenceCriterion
  pointwiseConvergenceImpliesUniformUnderConditionsClosed : F.pointwiseConvergenceImpliesUniformUnderConditions

def FunctionLimitClosed (F : FunctionLimitPackage) : Prop :=
  F.equicontinuity ∧ F.uniformConvergenceCriterion ∧ F.pointwiseConvergenceImpliesUniformUnderConditions

theorem function_limit_closed_from_evidence (F : FunctionLimitPackage) (E : FunctionLimitEvidence F) : FunctionLimitClosed F := by
  exact And.intro E.equicontinuityClosed (And.intro E.uniformConvergenceCriterionClosed E.pointwiseConvergenceImpliesUniformUnderConditionsClosed)

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse