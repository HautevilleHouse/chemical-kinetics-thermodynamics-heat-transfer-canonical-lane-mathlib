import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

structure AdmissibleClass where
  object: PoincareAdmittedObject
  endpointSatisfied: Prop
  remainderRecorded: Prop
  gateWitness: endpointSatisfied ∨ remainderRecorded

def admittedClosure (A: AdmissibleClass): Prop :=
  PoincareWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse
