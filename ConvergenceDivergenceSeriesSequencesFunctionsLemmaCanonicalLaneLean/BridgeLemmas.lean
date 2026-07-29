import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemma

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (A.object : SeriesConvergenceTestPackage).absoluteConvergence ∨ (A.object : UniformConvergencePackage).uniformConverges

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.gateWitness

end ConvergenceDivergenceSeriesSequencesFunctionsLemma
end HautevilleHouse