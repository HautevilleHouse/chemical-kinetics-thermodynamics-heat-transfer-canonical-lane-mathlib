import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstantDefined : Prop
  leChatelierPrinciple : Prop
  reactionQuotient : Prop
  vanTHoffEquation : Prop
  temperatureDependence : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  equilibriumConstantDefinedClosed : C.equilibriumConstantDefined
  leChatelierPrincipleClosed : C.leChatelierPrinciple
  reactionQuotientClosed : C.reactionQuotient
  vanTHoffEquationClosed : C.vanTHoffEquation
  temperatureDependenceClosed : C.temperatureDependence

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.equilibriumConstantDefined ∧ C.leChatelierPrinciple ∧ C.reactionQuotient ∧ C.vanTHoffEquation ∧ C.temperatureDependence

theorem chemicalEquilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence C) : ChemicalEquilibriumClosed C := by
  exact And.intro E.equilibriumConstantDefinedClosed
    (And.intro E.leChatelierPrincipleClosed
      (And.intro E.reactionQuotientClosed
        (And.intro E.vanTHoffEquationClosed E.temperatureDependenceClosed)))

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse
