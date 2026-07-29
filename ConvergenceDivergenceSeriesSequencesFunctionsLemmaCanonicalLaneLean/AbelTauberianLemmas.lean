import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure AbelTauberianPackage where
  abelSummability : Prop
  tauberianCondition : Prop
  abelImpliesConvergence : Prop

structure AbelTauberianEvidence (A : AbelTauberianPackage) where
  abelSummabilityClosed : A.abelSummability
  tauberianConditionClosed : A.tauberianCondition
  abelImpliesConvergenceClosed : A.abelImpliesConvergence

def AbelTauberianClosed (A : AbelTauberianPackage) : Prop :=
  A.abelSummability ∧ A.tauberianCondition ∧ A.abelImpliesConvergence

theorem abel_tauberian_closed_from_evidence (A : AbelTauberianPackage) (E : AbelTauberianEvidence A) : AbelTauberianClosed A := by
  exact And.intro E.abelSummabilityClosed (And.intro E.tauberianConditionClosed E.abelImpliesConvergenceClosed)

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse