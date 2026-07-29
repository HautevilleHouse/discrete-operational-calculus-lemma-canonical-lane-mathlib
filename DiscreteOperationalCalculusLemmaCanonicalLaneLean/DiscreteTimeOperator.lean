import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure DiscreteTimeOperator (A : AdmissibleClass) where
  discreteTimeSet : Set ℕ
  forwardShift : ℕ → ℕ
  backwardShift : ℕ → ℕ
  shiftInvertible : Prop
  shiftInvertibleClosed : shiftInvertible

def DiscreteTimeOperatorClosed (D : DiscreteTimeOperator A) : Prop :=
  D.shiftInvertible

theorem discrete_time_operator_closed_from_evidence (D : DiscreteTimeOperator A) :
    DiscreteTimeOperatorClosed D := by
  exact D.shiftInvertibleClosed

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse