import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure SequenceConvergencePackage where
  seqType : Type u
  limit : seqType
  epsilonCondition : Prop
  subsequenceProperty : Prop

structure SequenceConvergenceEvidence (S : SequenceConvergencePackage) where
  epsilonConditionClosed : S.epsilonCondition
  subsequencePropertyClosed : S.subsequenceProperty

def SequenceConvergenceClosed (S : SequenceConvergencePackage) : Prop :=
  S.epsilonCondition ∧ S.subsequenceProperty

theorem sequence_convergence_closed_from_evidence (S : SequenceConvergencePackage)
    (E : SequenceConvergenceEvidence S) : SequenceConvergenceClosed S :=
  And.intro E.epsilonConditionClosed E.subsequencePropertyClosed

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse