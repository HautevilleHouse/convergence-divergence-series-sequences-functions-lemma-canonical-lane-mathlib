import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic
import Mathlib.Analysis.SpecialFunctions.Pow

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean

structure ConvDivSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ConvDivAdmittedObject where
  space : ConvDivSpace
  sequence : ℕ → space.carrier
  convergenceProperty : Prop
  divergenceProperty : Prop
  conclusion : convergenceProperty ∨ divergenceProperty

structure ConvDivEndgameState where
  object : ConvDivAdmittedObject

def ConvDivWitnessClosed (O : ConvDivAdmittedObject) : Prop :=
  O.conclusion

end ConvergenceDivergenceSeriesSequencesFunctionsLemmaCanonicalLaneLean
end HautevilleHouse