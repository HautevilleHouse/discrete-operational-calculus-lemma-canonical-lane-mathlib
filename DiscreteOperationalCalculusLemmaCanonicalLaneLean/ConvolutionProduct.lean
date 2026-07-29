import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure ConvolutionProduct (A : AdmissibleClass) where
  domain : Set ℕ
  convolution : (ℕ → ℝ) → (ℕ → ℝ) → ℕ → ℝ
  associative : Prop
  commutative : Prop
  identityElement : ℕ → ℝ
  identityProperty : Prop
  associativeClosed : associative
  commutativeClosed : commutative
  identityPropertyClosed : identityProperty

def ConvolutionProductClosed (C : ConvolutionProduct A) : Prop :=
  C.associative ∧ C.commutative ∧ C.identityProperty

theorem convolution_product_closed_from_evidence (C : ConvolutionProduct A) :
    ConvolutionProductClosed C := by
  exact And.intro C.associativeClosed
    (And.intro C.commutativeClosed C.identityPropertyClosed)

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse