import DiscreteOperationalCalculusLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DiscreteOperationalCalculusSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DiscreteOperationalCalculusAdmittedObject where
  space : DiscreteOperationalCalculusSpace
  discreteScheme : Prop
  operationalCalculusLemma : Prop
  functionalCalculusModel : Type
  functionalCalculusTopology : TopologicalSpace functionalCalculusModel
  homomorphicToFunctionalCalculus : Prop
  conclusion : homomorphicToFunctionalCalculus

structure DiscreteOperationalCalculusEndgameState where
  object : DiscreteOperationalCalculusAdmittedObject

def DiscreteOperationalCalculusWitnessClosed (O : DiscreteOperationalCalculusAdmittedObject) : Prop :=
  O.homomorphicToFunctionalCalculus

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse