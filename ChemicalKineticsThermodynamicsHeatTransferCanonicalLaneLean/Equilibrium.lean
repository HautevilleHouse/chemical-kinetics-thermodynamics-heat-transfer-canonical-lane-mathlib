import ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean.HeatTransfer

/-!
# Chemical Equilibrium Package
-/

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure EquilibriumPackage where
  equilibriumConstant : Prop
  leChatelierPrinciple : Prop
  reactionQuotient : Prop
  conditionForSpontaneity : Prop

structure EquilibriumEvidence (E : EquilibriumPackage) where
  equilibriumConstantClosed : E.equilibriumConstant
  leChatelierPrincipleClosed : E.leChatelierPrinciple
  reactionQuotientClosed : E.reactionQuotient
  conditionForSpontaneityClosed : E.conditionForSpontaneity

def EquilibriumClosed (E : EquilibriumPackage) : Prop :=
  E.equilibriumConstant ∧ E.leChatelierPrinciple ∧ E.reactionQuotient ∧ E.conditionForSpontaneity

theorem equilibrium_closed_from_evidence (E : EquilibriumPackage) (Ev : EquilibriumEvidence E) :
    EquilibriumClosed E := by
  exact And.intro Ev.equilibriumConstantClosed
    (And.intro Ev.leChatelierPrincipleClosed
      (And.intro Ev.reactionQuotientClosed Ev.conditionForSpontaneityClosed))

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse
