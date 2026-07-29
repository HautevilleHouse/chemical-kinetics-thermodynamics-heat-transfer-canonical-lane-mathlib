import ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean.ChemicalEquilibrium

/-!
# Heat Transfer Processes Package
-/

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure HeatTransferPackage where
  heatConduction : Prop
  convection : Prop
  radiation : Prop
  thermalConductivity : Prop
  heatFlux : Prop
  temperatureProfile : Prop

structure HeatTransferEvidence (H : HeatTransferPackage) where
  heatConductionClosed : H.heatConduction
  convectionClosed : H.convection
  radiationClosed : H.radiation
  thermalConductivityClosed : H.thermalConductivity
  heatFluxClosed : H.heatFlux
  temperatureProfileClosed : H.temperatureProfile

def HeatTransferClosed (H : HeatTransferPackage) : Prop :=
  H.heatConduction ∧ H.convection ∧ H.radiation ∧ H.thermalConductivity ∧ H.heatFlux ∧ H.temperatureProfile

theorem heat_transfer_closed_from_evidence (H : HeatTransferPackage) (E : HeatTransferEvidence H) : HeatTransferClosed H :=
  And.intro E.heatConductionClosed (And.intro E.convectionClosed (And.intro E.radiationClosed (And.intro E.thermalConductivityClosed (And.intro E.heatFluxClosed E.temperatureProfileClosed))))

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse