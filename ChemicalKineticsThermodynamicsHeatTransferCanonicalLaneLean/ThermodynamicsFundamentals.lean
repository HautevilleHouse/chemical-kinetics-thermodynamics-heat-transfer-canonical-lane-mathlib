import ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean.TransitionStateTheory

/-!
# Thermodynamics Fundamentals Package
-/

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure ThermodynamicsPackage where
  firstLaw : Prop
  secondLaw : Prop
  thirdLaw : Prop
  gibbsFreeEnergy : Prop
  enthalpy : Prop
  entropy : Prop
  internalEnergy : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  firstLawClosed : T.firstLaw
  secondLawClosed : T.secondLaw
  thirdLawClosed : T.thirdLaw
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  enthalpyClosed : T.enthalpy
  entropyClosed : T.entropy
  internalEnergyClosed : T.internalEnergy

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.firstLaw ∧ T.secondLaw ∧ T.thirdLaw ∧ T.gibbsFreeEnergy ∧ T.enthalpy ∧ T.entropy ∧ T.internalEnergy

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T :=
  And.intro E.firstLawClosed (And.intro E.secondLawClosed (And.intro E.thirdLawClosed (And.intro E.gibbsFreeEnergyClosed (And.intro E.enthalpyClosed (And.intro E.entropyClosed E.internalEnergyClosed)))))

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse