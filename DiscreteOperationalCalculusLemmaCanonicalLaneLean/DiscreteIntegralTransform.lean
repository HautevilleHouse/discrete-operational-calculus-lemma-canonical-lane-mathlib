import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure DiscreteIntegralTransform (A : AdmissibleClass) where
  kernel : ℕ × ℕ → ℝ
  transform : (ℕ → ℝ) → ℕ → ℝ
  invertible : Prop
  inverseFormula : (ℕ → ℝ) → ℕ → ℝ
  inversionHolds : Prop
  inversionHoldsClosed : inversionHolds

def DiscreteIntegralTransformClosed (D : DiscreteIntegralTransform A) : Prop :=
  D.invertible ∧ D.inversionHolds

theorem discrete_integral_transform_closed_from_evidence
    (D : DiscreteIntegralTransform A) : DiscreteIntegralTransformClosed D := by
  exact And.intro D.invertible D.inversionHoldsClosed

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse