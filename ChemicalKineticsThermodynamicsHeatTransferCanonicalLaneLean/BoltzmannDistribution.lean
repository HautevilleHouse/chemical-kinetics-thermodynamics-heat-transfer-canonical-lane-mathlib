import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure BoltzmannDistributionPackage where
  energyLevels : Prop
  degeneracy : Prop
  partitionFunction : Prop
  equilibriumPopulation : Prop

def BoltzmannDistributionClosed (B : BoltzmannDistributionPackage) : Prop :=
  B.energyLevels ∧ B.degeneracy ∧ B.partitionFunction ∧ B.equilibriumPopulation

theorem boltzmann_distribution_closed (B : BoltzmannDistributionPackage) (h1 : B.energyLevels) (h2 : B.degeneracy) (h3 : B.partitionFunction) (h4 : B.equilibriumPopulation) : BoltzmannDistributionClosed B := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse