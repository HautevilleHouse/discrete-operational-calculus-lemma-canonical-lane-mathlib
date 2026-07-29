import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure DiscreteFractionalCalculusPackage where
  fractionalOrder : ℝ
  differenceOperator : (Nat -> ℝ) -> (Nat -> ℝ)
  semigroupProperty : Prop
  compositionIdentity : Prop

structure DiscreteFractionalCalculusEvidence (F : DiscreteFractionalCalculusPackage) where
  semigroupPropertyClosed : F.semigroupProperty
  compositionIdentityClosed : F.compositionIdentity

def DiscreteFractionalCalculusClosed (F : DiscreteFractionalCalculusPackage) : Prop :=
  F.semigroupProperty ∧ F.compositionIdentity

theorem discrete_fractional_calculus_closed_from_evidence
    (F : DiscreteFractionalCalculusPackage) (E : DiscreteFractionalCalculusEvidence F) :
    DiscreteFractionalCalculusClosed F := by
  exact And.intro E.semigroupPropertyClosed E.compositionIdentityClosed

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse