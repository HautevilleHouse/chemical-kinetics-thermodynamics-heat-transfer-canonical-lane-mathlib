import canonicalLaneMathlib.AdmissibleClass

/-!
# Thermodynamics Package
-/

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure ThermodynamicsPackage where
  firstLaw: Prop
  secondLaw: Prop
  thirdLaw: Prop
  thermodynamicPotentials: Prop

structure ThermodynamicsEvidence (T: ThermodynamicsPackage) where
  firstLawClosed: T.firstLaw
  secondLawClosed: T.secondLaw
  thirdLawClosed: T.thirdLaw
  thermodynamicPotentialsClosed: T.thermodynamicPotentials

def ThermodynamicsClosed (T: ThermodynamicsPackage): Prop :=
  T.firstLaw ∧ T.secondLaw ∧ T.thirdLaw ∧ T.thermodynamicPotentials

theorem thermodynamics_closed_from_evidence (T: ThermodynamicsPackage) (E: ThermodynamicsEvidence T): ThermodynamicsClosed T := by
  exact And.intro E.firstLawClosed (And.intro E.secondLawClosed (And.intro E.thirdLawClosed E.thermodynamicPotentialsClosed))

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse
