import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure DiscreteOperationalCalculusPackage where
  functionSpace : Type u
  forwardOperator : functionSpace -> functionSpace
  backwardOperator : functionSpace -> functionSpace
  productRuleIdentity : Prop
  summationByParts : Prop
  consistencyCondition : Prop

structure DiscreteOperationalCalculusEvidence (D : DiscreteOperationalCalculusPackage) where
  productRuleIdentityClosed : D.productRuleIdentity
  summationByPartsClosed : D.summationByParts
  consistencyConditionClosed : D.consistencyCondition

def DiscreteOperationalCalculusClosed (D : DiscreteOperationalCalculusPackage) : Prop :=
  D.productRuleIdentity ∧ D.summationByParts ∧ D.consistencyCondition

theorem discrete_operational_calculus_closed_from_evidence
    (D : DiscreteOperationalCalculusPackage) (E : DiscreteOperationalCalculusEvidence D) :
    DiscreteOperationalCalculusClosed D := by
  exact And.intro E.productRuleIdentityClosed
    (And.intro E.summationByPartsClosed E.consistencyConditionClosed)

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse