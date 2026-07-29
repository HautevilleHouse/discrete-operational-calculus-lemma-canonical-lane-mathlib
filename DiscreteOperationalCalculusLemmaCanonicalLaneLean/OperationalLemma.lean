import DiscreteOperationalCalculusLemmaCanonicalLaneLean.CalculusFoundation

/-!
# Operational Lemma Package
-/

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure OperationalLemmaPackage {G : GridDefinitionPackage}
    {C : CalculusFoundationPackage G} where
  leibnizRule : Prop
  productRule : Prop
  summationByParts : Prop
  consistencyHighOrder : Prop

structure OperationalLemmaEvidence {G : GridDefinitionPackage}
    {C : CalculusFoundationPackage G} (O : OperationalLemmaPackage G C) where
  leibnizRuleClosed : O.leibnizRule
  productRuleClosed : O.productRule
  summationByPartsClosed : O.summationByParts
  consistencyHighOrderClosed : O.consistencyHighOrder

def OperationalLemmaClosed {G : GridDefinitionPackage}
    {C : CalculusFoundationPackage G} (O : OperationalLemmaPackage G C) : Prop :=
  O.leibnizRule ∧ O.productRule ∧ O.summationByParts ∧ O.consistencyHighOrder

theorem operational_lemma_closed_from_evidence
    {G : GridDefinitionPackage} {C : CalculusFoundationPackage G}
    (O : OperationalLemmaPackage G C) (E : OperationalLemmaEvidence O) :
    OperationalLemmaClosed O := by
  exact And.intro E.leibnizRuleClosed
    (And.intro E.productRuleClosed
      (And.intro E.summationByPartsClosed E.consistencyHighOrderClosed))

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse