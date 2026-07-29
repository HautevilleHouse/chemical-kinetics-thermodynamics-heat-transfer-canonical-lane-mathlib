import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure HeatTransferConductionPackage where
  thermalConductivity : Type u
  fourierLaw : Prop
  heatEquation : Prop
  boundaryConditions : Prop

structure HeatTransferConductionEvidence (H : HeatTransferConductionPackage) where
  fourierLawClosed : H.fourierLaw
  heatEquationClosed : H.heatEquation
  boundaryConditionsClosed : H.boundaryConditions

def HeatTransferConductionClosed (H : HeatTransferConductionPackage) : Prop :=
  H.fourierLaw ∧ H.heatEquation ∧ H.boundaryConditions

theorem heat_transfer_conduction_closed_from_evidence (H : HeatTransferConductionPackage) (E : HeatTransferConductionEvidence H) :
    HeatTransferConductionClosed H := by
  exact And.intro E.fourierLawClosed (And.intro E.heatEquationClosed E.boundaryConditionsClosed)

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse