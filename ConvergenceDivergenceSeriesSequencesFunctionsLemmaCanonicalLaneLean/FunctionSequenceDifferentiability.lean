import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemma

structure FunctionSequenceDifferentiabilityPackage where
  differentiableSequence : Nat → (ℝ → ℝ)
  domain : Set ℝ
  pointwiseLimit : ℝ → ℝ
  derivativeSequenceConverges : Prop
  limitDifferentiable : Prop
  derivativeEqualsLimitDerivative : Prop

structure FunctionSequenceDifferentiabilityEvidence (F : FunctionSequenceDifferentiabilityPackage) where
  derivativeSequenceConvergesClosed : F.derivativeSequenceConverges
  limitDifferentiableClosed : F.limitDifferentiable
  derivativeEqualsLimitDerivativeClosed : F.derivativeEqualsLimitDerivative

def FunctionSequenceDifferentiabilityClosed (F : FunctionSequenceDifferentiabilityPackage) : Prop :=
  F.derivativeSequenceConverges ∧ F.limitDifferentiable ∧ F.derivativeEqualsLimitDerivative

theorem function_sequence_differentiability_closed_from_evidence (F : FunctionSequenceDifferentiabilityPackage) (E : FunctionSequenceDifferentiabilityEvidence F) :
    FunctionSequenceDifferentiabilityClosed F := by
  exact And.intro E.derivativeSequenceConvergesClosed (And.intro E.limitDifferentiableClosed E.derivativeEqualsLimitDerivativeClosed)

end ConvergenceDivergenceSeriesSequencesFunctionsLemma
end HautevilleHouse