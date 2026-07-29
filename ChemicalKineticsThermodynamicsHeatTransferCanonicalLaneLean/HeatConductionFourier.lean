import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure HeatConductionFourierPackage where
  temperatureGradient : Prop
  thermalConductivity : Prop
  heatFluxVector : Prop
  conservationOfEnergy : Prop
  boundaryConditions : Prop

def HeatConductionFourierClosed (H : HeatConductionFourierPackage) : Prop :=
  H.temperatureGradient ∧ H.thermalConductivity ∧ H.heatFluxVector ∧ H.conservationOfEnergy ∧ H.boundaryConditions

theorem heat_conduction_fourier_closed (H : HeatConductionFourierPackage) (h1 : H.temperatureGradient) (h2 : H.thermalConductivity) (h3 : H.heatFluxVector) (h4 : H.conservationOfEnergy) (h5 : H.boundaryConditions) : HeatConductionFourierClosed H := by
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse