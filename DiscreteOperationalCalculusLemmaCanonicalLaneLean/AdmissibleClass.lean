import DiscreteOperationalCalculusLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : DiscreteOperationalCalculusAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiscreteOperationalCalculusWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse