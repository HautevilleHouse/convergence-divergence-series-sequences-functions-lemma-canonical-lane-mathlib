import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure LimitSupInfPackage where
  sequence : ℕ → ℝ
  limSup : ℝ
  limInf : ℝ
  limSupProperty : Prop
  limInfProperty : Prop
  limSupEqLimInfImpliesConvergence : Prop

structure LimitSupInfEvidence (L : LimitSupInfPackage) where
  limSupPropertyClosed : L.limSupProperty
  limInfPropertyClosed : L.limInfProperty
  limSupEqLimInfImpliesConvergenceClosed : L.limSupEqLimInfImpliesConvergence

def LimitSupInfClosed (L : LimitSupInfPackage) : Prop :=
  L.limSupProperty ∧ L.limInfProperty ∧ L.limSupEqLimInfImpliesConvergence

theorem limit_sup_inf_closed_from_evidence (L : LimitSupInfPackage) (E : LimitSupInfEvidence L) : LimitSupInfClosed L := by
  exact And.intro E.limSupPropertyClosed (And.intro E.limInfPropertyClosed E.limSupEqLimInfImpliesConvergenceClosed)

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse