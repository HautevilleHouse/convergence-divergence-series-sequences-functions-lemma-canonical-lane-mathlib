import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure ConvergencePackage where
  sequence : Type u
  limit : Type v
  epsilon : ℚ
  pointwiseConverges : Prop
  uniformConverges : Prop
  absolutelyConverges : Prop
  conditionallyConverges : Prop

structure ConvergenceEvidence (C : ConvergencePackage) where
  pointwiseConvergesClosed : C.pointwiseConverges
  uniformConvergesClosed : C.uniformConverges
  absolutelyConvergesClosed : C.absolutelyConverges
  conditionallyConvergesClosed : C.conditionallyConverges

def ConvergenceClosed (C : ConvergencePackage) : Prop :=
  C.pointwiseConverges ∧ C.uniformConverges ∧ C.absolutelyConverges ∧ C.conditionallyConverges

theorem convergence_closed_from_evidence (C : ConvergencePackage) (E : ConvergenceEvidence C) : ConvergenceClosed C := by
  exact And.intro E.pointwiseConvergesClosed (And.intro E.uniformConvergesClosed (And.intro E.absolutelyConvergesClosed E.conditionallyConvergesClosed))

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse