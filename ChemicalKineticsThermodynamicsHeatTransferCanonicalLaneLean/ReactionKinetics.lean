import canonicalLaneMathlib.AdmissibleClass

/-!
# Reaction Kinetics Package
-/

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw: Prop
  activationEnergy: Prop
  temperatureDependence: Prop
  rateConstant: Prop

structure ReactionKineticsEvidence (R: ReactionKineticsPackage) where
  rateLawClosed: R.rateLaw
  activationEnergyClosed: R.activationEnergy
  temperatureDependenceClosed: R.temperatureDependence
  rateConstantClosed: R.rateConstant

def ReactionKineticsClosed (R: ReactionKineticsPackage): Prop :=
  R.rateLaw ∧ R.activationEnergy ∧ R.temperatureDependence ∧ R.rateConstant

theorem reaction_kinetics_closed_from_evidence (R: ReactionKineticsPackage) (E: ReactionKineticsEvidence R): ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed (And.intro E.activationEnergyClosed (And.intro E.temperatureDependenceClosed E.rateConstantClosed))

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse
