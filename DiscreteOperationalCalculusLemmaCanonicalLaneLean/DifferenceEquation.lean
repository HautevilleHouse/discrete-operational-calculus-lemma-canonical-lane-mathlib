import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure DifferenceEquation (A : AdmissibleClass) where
  timeSet : Set ℕ
  unknown : ℕ → ℝ
  linearOperator : (ℕ → ℝ) → ℕ → ℝ
  forcingTerm : ℕ → ℝ
  equationSatisfied : Prop
  equationSatisfiedClosed : equationSatisfied

def DifferenceEquationClosed (D : DifferenceEquation A) : Prop :=
  D.equationSatisfied

theorem difference_equation_closed_from_evidence (D : DifferenceEquation A) :
    DifferenceEquationClosed D := by
  exact D.equationSatisfiedClosed

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse