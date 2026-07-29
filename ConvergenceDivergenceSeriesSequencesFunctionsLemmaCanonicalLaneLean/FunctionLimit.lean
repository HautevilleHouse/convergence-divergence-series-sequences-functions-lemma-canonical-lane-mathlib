import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure FunctionLimitPackage where
  functionType : Type u
  domainType : Type v
  limitPoint : domainType
  limitValue : functionType
  limitExists : Prop
  epsilonDeltaDefinition : Prop

structure FunctionLimitEvidence (F : FunctionLimitPackage) where
  limitExistsClosed : F.limitExists
  epsilonDeltaDefinitionClosed : F.epsilonDeltaDefinition

def FunctionLimitClosed (F : FunctionLimitPackage) : Prop :=
  F.limitExists ∧ F.epsilonDeltaDefinition

theorem function_limit_closed_from_evidence (F : FunctionLimitPackage) (E : FunctionLimitEvidence F) : FunctionLimitClosed F := by
  exact And.intro E.limitExistsClosed E.epsilonDeltaDefinitionClosed

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse
