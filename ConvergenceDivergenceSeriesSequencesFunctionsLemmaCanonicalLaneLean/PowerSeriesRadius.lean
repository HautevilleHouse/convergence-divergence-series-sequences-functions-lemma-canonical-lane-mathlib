import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceSeriesSequencesFunctionsLemma

structure PowerSeriesRadiusPackage where
  coefficientSequence : Nat → ℝ
  center : ℝ
  radiusOfConvergence : ℝ
  insideDiskConverges : Prop
  outsideDiskDiverges : Prop

structure PowerSeriesRadiusEvidence (P : PowerSeriesRadiusPackage) where
  insideDiskConvergesClosed : P.insideDiskConverges
  outsideDiskDivergesClosed : P.outsideDiskDiverges

def PowerSeriesRadiusClosed (P : PowerSeriesRadiusPackage) : Prop :=
  P.insideDiskConverges ∧ P.outsideDiskDiverges

theorem power_series_radius_closed_from_evidence (P : PowerSeriesRadiusPackage) (E : PowerSeriesRadiusEvidence P) :
    PowerSeriesRadiusClosed P := by
  exact And.intro E.insideDiskConvergesClosed E.outsideDiskDivergesClosed

end ConvergenceDivergenceSeriesSequencesFunctionsLemma
end HautevilleHouse