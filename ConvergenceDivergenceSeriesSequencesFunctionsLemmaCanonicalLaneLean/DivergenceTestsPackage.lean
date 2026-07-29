import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure DivergenceTestsPackage where
  sequence : ℕ → ℝ
  termTest : Prop
  ratioTest : Prop
  rootTest : Prop
  integralTest : Prop

structure DivergenceTestsEvidence (D : DivergenceTestsPackage) where
  termTestClosed : D.termTest
  ratioTestClosed : D.ratioTest
  rootTestClosed : D.rootTest
  integralTestClosed : D.integralTest

def DivergenceTestsClosed (D : DivergenceTestsPackage) : Prop :=
  D.termTest ∧ D.ratioTest ∧ D.rootTest ∧ D.integralTest

theorem divergence_tests_closed_from_evidence
    (D : DivergenceTestsPackage) (E : DivergenceTestsEvidence D) :
    DivergenceTestsClosed D := by
  exact And.intro E.termTestClosed
    (And.intro E.ratioTestClosed
      (And.intro E.rootTestClosed E.integralTestClosed))

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse