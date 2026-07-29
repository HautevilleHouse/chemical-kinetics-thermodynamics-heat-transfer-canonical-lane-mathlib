import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure GibbsFreeEnergyPackage where
  enthalpy : Prop
  entropy : Prop
  temperature : Prop
  spontaneityCondition : Prop
  equilibriumConstant : Prop

def GibbsFreeEnergyClosed (G : GibbsFreeEnergyPackage) : Prop :=
  G.enthalpy ∧ G.entropy ∧ G.temperature ∧ G.spontaneityCondition ∧ G.equilibriumConstant

theorem gibbs_free_energy_closed (G : GibbsFreeEnergyPackage) (h1 : G.enthalpy) (h2 : G.entropy) (h3 : G.temperature) (h4 : G.spontaneityCondition) (h5 : G.equilibriumConstant) : GibbsFreeEnergyClosed G := by
  exact And.intro h1 (And.intro h2 (And.intro h3 (And.intro h4 h5)))

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse