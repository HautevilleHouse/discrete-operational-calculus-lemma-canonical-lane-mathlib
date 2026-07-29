import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure DiscreteOperationalCalculusLemmaObject where
  operatorClass : Type u
  domainSpace : Type v
  rangeSpace : Type w
  forwardOperator : operatorClass -> (domainSpace -> rangeSpace)
  productRuleHolds : Prop
  summationByPartsHolds : Prop
  conclusion : Prop

structure DiscreteOperationalCalculusLemmaConclusion where
  object : DiscreteOperationalCalculusLemmaObject
  productRuleHoldsClosed : object.productRuleHolds
  summationByPartsHoldsClosed : object.summationByPartsHolds
  conclusionClosed : object.conclusion

def DiscreteOperationalCalculusLemmaWitnessClosed (O : DiscreteOperationalCalculusLemmaObject) : Prop :=
  O.conclusion

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse