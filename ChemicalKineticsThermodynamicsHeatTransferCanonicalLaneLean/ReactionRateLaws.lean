import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure ReactionRateLawsPackage where
  rateExpression : Prop
  arrheniusEquation : Prop
  activationEnergyDefined : Prop
  temperatureDependence : Prop
  reactionOrder : Prop

structure ReactionRateLawsEvidence (R : ReactionRateLawsPackage) where
  rateExpressionClosed : R.rateExpression
  arrheniusEquationClosed : R.arrheniusEquation
  activationEnergyDefinedClosed : R.activationEnergyDefined
  temperatureDependenceClosed : R.temperatureDependence
  reactionOrderClosed : R.reactionOrder

def ReactionRateLawsClosed (R : ReactionRateLawsPackage) : Prop :=
  R.rateExpression ∧ R.arrheniusEquation ∧ R.activationEnergyDefined ∧ R.temperatureDependence ∧ R.reactionOrder

theorem reactionRateLaws_closed_from_evidence (R : ReactionRateLawsPackage) (E : ReactionRateLawsEvidence R) : ReactionRateLawsClosed R := by
  exact And.intro E.rateExpressionClosed
    (And.intro E.arrheniusEquationClosed
      (And.intro E.activationEnergyDefinedClosed
        (And.intro E.temperatureDependenceClosed E.reactionOrderClosed)))

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse
