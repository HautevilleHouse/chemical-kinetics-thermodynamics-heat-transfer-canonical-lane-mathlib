import canonicalLaneMathlib.AdmissibleClass

/-!
# Algebraic Structure Package
-/

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure AlgebraicStructure where
  groupStructure: Prop
  ringStructure: Prop
  fieldStructure: Prop
  moduleStructure: Prop

structure AlgebraicStructureEvidence (A: AlgebraicStructure) where
  groupStructureClosed: A.groupStructure
  ringStructureClosed: A.ringStructure
  fieldStructureClosed: A.fieldStructure
  moduleStructureClosed: A.moduleStructure

def AlgebraicStructureClosed (A: AlgebraicStructure): Prop :=
  A.groupStructure ∧ A.ringStructure ∧ A.fieldStructure ∧ A.moduleStructure

theorem algebraic_structure_closed_from_evidence (A: AlgebraicStructure) (E: AlgebraicStructureEvidence A): AlgebraicStructureClosed A := by
  exact And.intro E.groupStructureClosed (And.intro E.ringStructureClosed (And.intro E.fieldStructureClosed E.moduleStructureClosed))

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse
