import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure UniformConvergencePackage where
  functionSequenceType : Type u
  domainType : Type v
  pointwiseLimit : functionSequenceType
  uniformLimit : functionSequenceType
  uniformConvergence : Prop
  cauchyCriterion : Prop

structure UniformConvergenceEvidence (U : UniformConvergencePackage) where
  uniformConvergenceClosed : U.uniformConvergence
  cauchyCriterionClosed : U.cauchyCriterion

def UniformConvergenceClosed (U : UniformConvergencePackage) : Prop :=
  U.uniformConvergence ∧ U.cauchyCriterion

theorem uniform_convergence_closed_from_evidence (U : UniformConvergencePackage) (E : UniformConvergenceEvidence U) : UniformConvergenceClosed U := by
  exact And.intro E.uniformConvergenceClosed E.cauchyCriterionClosed

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
