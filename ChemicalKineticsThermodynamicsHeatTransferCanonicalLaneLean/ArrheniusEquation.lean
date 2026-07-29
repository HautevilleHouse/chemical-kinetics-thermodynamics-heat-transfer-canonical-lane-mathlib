import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure ArrheniusEquationPackage where
  activationEnergy : Prop
  preExponentialFactor : Prop
  temperatureDependence : Prop
  collisionTheory : Prop

structure ArrheniusEquationEvidence (A : ArrheniusEquationPackage) where
  activationEnergyClosed : A.activationEnergy
  preExponentialFactorClosed : A.preExponentialFactor
  temperatureDependenceClosed : A.temperatureDependence
  collisionTheoryClosed : A.collisionTheory

def ArrheniusEquationClosed (A : ArrheniusEquationPackage) : Prop :=
  A.activationEnergy ∧ A.preExponentialFactor ∧ A.temperatureDependence ∧ A.collisionTheory

theorem arrhenius_equation_closed_from_evidence (A : ArrheniusEquationPackage) (E : ArrheniusEquationEvidence A) :
    ArrheniusEquationClosed A := by
  exact And.intro E.activationEnergyClosed (And.intro E.preExponentialFactorClosed (And.intro E.temperatureDependenceClosed E.collisionTheoryClosed))

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse