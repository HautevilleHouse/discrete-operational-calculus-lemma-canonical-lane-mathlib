import DiscreteOperationalCalculusLemmaCanonicalLaneLean.DiscreteOperators

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure DiscreteCalculusPackage (D : DiscreteOperatorSpace) where
  productRule : Prop
  summationByParts : Prop
  discreteLeibniz : Prop
  taylorExpansion : Prop

structure DiscreteCalculusEvidence {D : DiscreteOperatorSpace}
    (C : DiscreteCalculusPackage D) where
  productRuleClosed : C.productRule
  summationByPartsClosed : C.summationByParts
  discreteLeibnizClosed : C.discreteLeibniz
  taylorExpansionClosed : C.taylorExpansion

def DiscreteCalculusClosed {D : DiscreteOperatorSpace}
    (C : DiscreteCalculusPackage D) : Prop :=
  C.productRule ∧ C.summationByParts ∧ C.discreteLeibniz ∧ C.taylorExpansion

theorem discrete_calculus_closed_from_evidence {D : DiscreteOperatorSpace}
    (C : DiscreteCalculusPackage D) (E : DiscreteCalculusEvidence C) :
    DiscreteCalculusClosed C := by
  exact And.intro E.productRuleClosed
    (And.intro E.summationByPartsClosed
      (And.intro E.discreteLeibnizClosed E.taylorExpansionClosed))

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse