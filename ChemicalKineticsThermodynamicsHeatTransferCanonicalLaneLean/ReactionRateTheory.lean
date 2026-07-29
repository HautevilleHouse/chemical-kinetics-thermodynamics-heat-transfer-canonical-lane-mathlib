import ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean.AdmissibleClass

/-!
# Reaction Rate Theory Package
-/

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure ReactionRatePackage where
  rateLaw : Prop
  rateConstant : Prop
  order : Prop
  activationEnergy : Prop
  arrheniusPreFactor : Prop
  mechanism : Prop

structure ReactionRateEvidence (R : ReactionRatePackage) where
  rateLawClosed : R.rateLaw
  rateConstantClosed : R.rateConstant
  orderClosed : R.order
  activationEnergyClosed : R.activationEnergy
  arrheniusPreFactorClosed : R.arrheniusPreFactor
  mechanismClosed : R.mechanism

def ReactionRateClosed (R : ReactionRatePackage) : Prop :=
  R.rateLaw ∧ R.rateConstant ∧ R.order ∧ R.activationEnergy ∧ R.arrheniusPreFactor ∧ R.mechanism

theorem reaction_rate_closed_from_evidence (R : ReactionRatePackage) (E : ReactionRateEvidence R) : ReactionRateClosed R :=
  And.intro E.rateLawClosed (And.intro E.rateConstantClosed (And.intro E.orderClosed (And.intro E.activationEnergyClosed (And.intro E.arrheniusPreFactorClosed E.mechanismClosed))))

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse