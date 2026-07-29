import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  huckelMethod : Prop
  molecularOrbitalsDefined : Prop
  energyLevelsComputed : Prop
  symmetryAdapted : Prop
  bondOrderDerived : Prop

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  huckelMethodClosed : M.huckelMethod
  molecularOrbitalsDefinedClosed : M.molecularOrbitalsDefined
  energyLevelsComputedClosed : M.energyLevelsComputed
  symmetryAdaptedClosed : M.symmetryAdapted
  bondOrderDerivedClosed : M.bondOrderDerived

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.huckelMethod ∧ M.molecularOrbitalsDefined ∧ M.energyLevelsComputed ∧ M.symmetryAdapted ∧ M.bondOrderDerived

theorem molecularOrbitalTheory_closed_from_evidence (M : MolecularOrbitalTheoryPackage) (E : MolecularOrbitalTheoryEvidence M) : MolecularOrbitalTheoryClosed M := by
  exact And.intro E.huckelMethodClosed
    (And.intro E.molecularOrbitalsDefinedClosed
      (And.intro E.energyLevelsComputedClosed
        (And.intro E.symmetryAdaptedClosed E.bondOrderDerivedClosed)))

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse
