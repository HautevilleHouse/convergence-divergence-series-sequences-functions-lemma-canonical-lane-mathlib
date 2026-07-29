import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure SeriesTestsPackage where
  termTest : Prop
  ratioTest : Prop
  rootTest : Prop
  integralTest : Prop
  comparisonTest : Prop
  alternatingSeriesTest : Prop

structure SeriesTestsEvidence (T : SeriesTestsPackage) where
  termTestClosed : T.termTest
  ratioTestClosed : T.ratioTest
  rootTestClosed : T.rootTest
  integralTestClosed : T.integralTest
  comparisonTestClosed : T.comparisonTest
  alternatingSeriesTestClosed : T.alternatingSeriesTest

def SeriesTestsClosed (T : SeriesTestsPackage) : Prop :=
  T.termTest ∧ T.ratioTest ∧ T.rootTest ∧ T.integralTest ∧ T.comparisonTest ∧ T.alternatingSeriesTest

theorem series_tests_closed_from_evidence (T : SeriesTestsPackage) (E : SeriesTestsEvidence T) : SeriesTestsClosed T := by
  exact And.intro E.termTestClosed (And.intro E.ratioTestClosed (And.intro E.rootTestClosed (And.intro E.integralTestClosed (And.intro E.comparisonTestClosed E.alternatingSeriesTestClosed))))

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse