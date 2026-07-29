import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

def bridgeClosed (A: AdmissibleClass): Prop :=
  PoincareWitnessClosed A.object

theorem bridge_from_admissible_class (A: AdmissibleClass):
    bridgeClosed A := by
  exact A.object.conclusion

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse
