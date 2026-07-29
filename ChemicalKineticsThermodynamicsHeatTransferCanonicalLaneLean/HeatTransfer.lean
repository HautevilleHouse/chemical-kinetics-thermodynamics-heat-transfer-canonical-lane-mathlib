import canonicalLaneMathlib.AdmissibleClass

/-!
# Heat Transfer Package
-/

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure HeatTransferPackage where
  conductionLaw: Prop
  convectionLaw: Prop
  radiationLaw: Prop
  heatEquation: Prop

structure HeatTransferEvidence (H: HeatTransferPackage) where
  conductionLawClosed: H.conductionLaw
  convectionLawClosed: H.convectionLaw
  radiationLawClosed: H.radiationLaw
  heatEquationClosed: H.heatEquation

def HeatTransferClosed (H: HeatTransferPackage): Prop :=
  H.conductionLaw ∧ H.convectionLaw ∧ H.radiationLaw ∧ H.heatEquation

theorem heat_transfer_closed_from_evidence (H: HeatTransferPackage) (E: HeatTransferEvidence H): HeatTransferClosed H := by
  exact And.intro E.conductionLawClosed (And.intro E.convectionLawClosed (And.intro E.radiationLawClosed E.heatEquationClosed))

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse
