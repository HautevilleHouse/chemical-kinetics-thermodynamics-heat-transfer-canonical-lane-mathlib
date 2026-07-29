import ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ChemicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ChemicalAdmittedObject where
  space : ChemicalSpace
  reactionNetworkDefined : Prop
  thermodynamicConsistency : Prop
  rateLawsDerived : Prop
  equilibriumCondition : Prop
  conclusion : equilibriumCondition

structure ChemicalEndgameState where
  object : ChemicalAdmittedObject

def ChemicalWitnessClosed (O : ChemicalAdmittedObject) : Prop :=
  O.equilibriumCondition

end ChemicalKineticsThermodynamicsHeatTransferCanonicalLaneLean
end HautevilleHouse
