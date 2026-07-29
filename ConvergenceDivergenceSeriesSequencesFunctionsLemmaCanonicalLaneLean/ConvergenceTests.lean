import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure ConvergenceTestPackage where
  series : Type u
  sequence : Type v
  testCondition : Prop
  convergenceCriterion : Prop
  divergenceCriterion : Prop

structure ConvergenceTestEvidence (T : ConvergenceTestPackage) where
  testConditionClosed : T.testCondition
  convergenceCriterionClosed : T.convergenceCriterion
  divergenceCriterionClosed : T.divergenceCriterion

def ConvergenceTestClosed (T : ConvergenceTestPackage) : Prop :=
  T.testCondition ∧ T.convergenceCriterion ∧ T.divergenceCriterion

theorem convergence_test_closed_from_evidence (T : ConvergenceTestPackage)
    (E : ConvergenceTestEvidence T) : ConvergenceTestClosed T :=
  And.intro E.testConditionClosed
    (And.intro E.convergenceCriterionClosed E.divergenceCriterionClosed)

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse