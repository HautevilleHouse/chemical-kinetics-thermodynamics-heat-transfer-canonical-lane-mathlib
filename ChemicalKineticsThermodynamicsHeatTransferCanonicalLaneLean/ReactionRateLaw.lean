import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure ReactionRatePackage where
  reactantConcentrations : Type u
  rateConstant : Type v
  rateExpression : Prop
  temperatureDependence : Prop
  steadyStateApproximation : Prop

structure ReactionRateEvidence (R : ReactionRatePackage) where
  rateExpressionClosed : R.rateExpression
  temperatureDependenceClosed : R.temperatureDependence
  steadyStateApproximationClosed : R.steadyStateApproximation

def ReactionRateClosed (R : ReactionRatePackage) : Prop :=
  R.rateExpression ∧ R.temperatureDependence ∧ R.steadyStateApproximation

theorem reaction_rate_closed_from_evidence (R : ReactionRatePackage) (E : ReactionRateEvidence R) :
    ReactionRateClosed R := by
  exact And.intro E.rateExpressionClosed (And.intro E.temperatureDependenceClosed E.steadyStateApproximationClosed)

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse