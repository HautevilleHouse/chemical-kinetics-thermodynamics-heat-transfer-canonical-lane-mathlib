import ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean.ReactionRateTheory

/-!
# Transition State Theory Package
-/

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure TransitionStateTheoryPackage (R : ReactionRatePackage) where
  potentialEnergySurface : Prop
  saddlePoint : Prop
  vibrationalFrequencies : Prop
  eyringEquation : Prop
  enthalpyOfActivation : Prop
  entropyOfActivation : Prop

structure TransitionStateTheoryEvidence {R : ReactionRatePackage} (T : TransitionStateTheoryPackage R) where
  potentialEnergySurfaceClosed : T.potentialEnergySurface
  saddlePointClosed : T.saddlePoint
  vibrationalFrequenciesClosed : T.vibrationalFrequencies
  eyringEquationClosed : T.eyringEquation
  enthalpyOfActivationClosed : T.enthalpyOfActivation
  entropyOfActivationClosed : T.entropyOfActivation

def TransitionStateTheoryClosed {R : ReactionRatePackage} (T : TransitionStateTheoryPackage R) : Prop :=
  T.potentialEnergySurface ∧ T.saddlePoint ∧ T.vibrationalFrequencies ∧ T.eyringEquation ∧ T.enthalpyOfActivation ∧ T.entropyOfActivation

theorem transition_state_theory_closed_from_evidence {R : ReactionRatePackage} (T : TransitionStateTheoryPackage R) (E : TransitionStateTheoryEvidence T) : TransitionStateTheoryClosed T :=
  And.intro E.potentialEnergySurfaceClosed (And.intro E.saddlePointClosed (And.intro E.vibrationalFrequenciesClosed (And.intro E.eyringEquationClosed (And.intro E.enthalpyOfActivationClosed E.entropyOfActivationClosed))))

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse