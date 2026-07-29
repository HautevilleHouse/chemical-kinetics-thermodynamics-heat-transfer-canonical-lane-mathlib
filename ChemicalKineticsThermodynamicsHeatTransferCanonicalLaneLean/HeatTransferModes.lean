import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure HeatTransferModesPackage where
  conductionDefined : Prop
  convectionDefined : Prop
  radiationDefined : Prop
  fourierLaw : Prop
  newtonsCooling : Prop
  stefanBoltzmann : Prop

structure HeatTransferModesEvidence (H : HeatTransferModesPackage) where
  conductionDefinedClosed : H.conductionDefined
  convectionDefinedClosed : H.convectionDefined
  radiationDefinedClosed : H.radiationDefined
  fourierLawClosed : H.fourierLaw
  newtonsCoolingClosed : H.newtonsCooling
  stefanBoltzmannClosed : H.stefanBoltzmann

def HeatTransferModesClosed (H : HeatTransferModesPackage) : Prop :=
  H.conductionDefined ∧ H.convectionDefined ∧ H.radiationDefined ∧ H.fourierLaw ∧ H.newtonsCooling ∧ H.stefanBoltzmann

theorem heatTransferModes_closed_from_evidence (H : HeatTransferModesPackage) (E : HeatTransferModesEvidence H) : HeatTransferModesClosed H := by
  exact And.intro E.conductionDefinedClosed
    (And.intro E.convectionDefinedClosed
      (And.intro E.radiationDefinedClosed
        (And.intro E.fourierLawClosed
          (And.intro E.newtonsCoolingClosed E.stefanBoltzmannClosed))))

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse
