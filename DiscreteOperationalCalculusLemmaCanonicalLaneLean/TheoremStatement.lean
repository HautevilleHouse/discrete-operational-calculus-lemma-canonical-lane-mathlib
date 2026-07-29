import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure DiscreteOpAdmittedObject where
  domain : Type
  operator : Type
  discreteLemmaStatement : Prop
  conclusion : discreteLemmaStatement

structure DiscreteOpEndgameState where
  object : DiscreteOpAdmittedObject

def DiscreteOpWitnessClosed (O : DiscreteOpAdmittedObject) : Prop :=
  O.discreteLemmaStatement

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse