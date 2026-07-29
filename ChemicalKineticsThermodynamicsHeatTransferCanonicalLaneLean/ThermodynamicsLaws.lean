import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure ThermodynamicsLawsPackage where
  firstLaw : Prop
  secondLaw : Prop
  thirdLaw : Prop
  internalEnergyDefined : Prop
  entropyDefined : Prop
  gibbsFreeEnergyDefined : Prop

structure ThermodynamicsLawsEvidence (T : ThermodynamicsLawsPackage) where
  firstLawClosed : T.firstLaw
  secondLawClosed : T.secondLaw
  thirdLawClosed : T.thirdLaw
  internalEnergyDefinedClosed : T.internalEnergyDefined
  entropyDefinedClosed : T.entropyDefined
  gibbsFreeEnergyDefinedClosed : T.gibbsFreeEnergyDefined

def ThermodynamicsLawsClosed (T : ThermodynamicsLawsPackage) : Prop :=
  T.firstLaw ∧ T.secondLaw ∧ T.thirdLaw ∧ T.internalEnergyDefined ∧ T.entropyDefined ∧ T.gibbsFreeEnergyDefined

theorem thermodynamicsLaws_closed_from_evidence (T : ThermodynamicsLawsPackage) (E : ThermodynamicsLawsEvidence T) : ThermodynamicsLawsClosed T := by
  exact And.intro E.firstLawClosed
    (And.intro E.secondLawClosed
      (And.intro E.thirdLawClosed
        (And.intro E.internalEnergyDefinedClosed
          (And.intro E.entropyDefinedClosed E.gibbsFreeEnergyDefinedClosed))))

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse
