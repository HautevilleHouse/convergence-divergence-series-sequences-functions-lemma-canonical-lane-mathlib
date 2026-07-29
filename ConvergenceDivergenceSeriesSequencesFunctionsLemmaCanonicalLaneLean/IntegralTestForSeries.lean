import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemma

structure IntegralTestForSeriesPackage where
  termFunction : ℝ → ℝ
  series : Nat → ℝ
  integralImproperConverges : Prop
  monotoneDecay : Prop
  nonnegativeCondition : Prop
  comparisonResult : Prop

structure IntegralTestForSeriesEvidence (I : IntegralTestForSeriesPackage) where
  integralImproperConvergesClosed : I.integralImproperConverges
  monotoneDecayClosed : I.monotoneDecay
  nonnegativeConditionClosed : I.nonnegativeCondition
  comparisonResultClosed : I.comparisonResult

def IntegralTestForSeriesClosed (I : IntegralTestForSeriesPackage) : Prop :=
  I.integralImproperConverges ∧ I.monotoneDecay ∧ I.nonnegativeCondition ∧ I.comparisonResult

theorem integral_test_for_series_closed_from_evidence (I : IntegralTestForSeriesPackage) (E : IntegralTestForSeriesEvidence I) :
    IntegralTestForSeriesClosed I := by
  exact And.intro E.integralImproperConvergesClosed (And.intro E.monotoneDecayClosed (And.intro E.nonnegativeConditionClosed E.comparisonResultClosed))

end ConvergenceDivergenceSeriesSequencesFunctionsLemma
end HautevilleHouse