import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure DiscreteFunction (X : Type u) (Y : Type v) where
  domain : List X
  values : Y -> Y

structure ForwardDifferenceOperator (X : Type u) {Y : Type v} [AddGroup Y] where
  step : Y -> Y
  linear : Prop
  shiftInvariant : Prop

structure BackwardDifferenceOperator (X : Type u) {Y : Type v} [AddGroup Y] where
  step : Y -> Y
  linear : Prop
  shiftInvariant : Prop

structure DiscreteDifferenceOperatorsPackage where
  forward : ForwardDifferenceOperator ℕ ℤ
  backward : BackwardDifferenceOperator ℕ ℤ
  forwardClosed : forward.linear ∧ forward.shiftInvariant
  backwardClosed : backward.linear ∧ backward.shiftInvariant

structure DiscreteDifferenceOperatorsEvidence (P : DiscreteDifferenceOperatorsPackage) where
  forwardClosed : P.forwardClosed
  backwardClosed : P.backwardClosed

def DiscreteDifferenceOperatorsClosed (P : DiscreteDifferenceOperatorsPackage) : Prop :=
  P.forwardClosed ∧ P.backwardClosed

theorem discrete_difference_operators_closed_from_evidence
    (P : DiscreteDifferenceOperatorsPackage) (E : DiscreteDifferenceOperatorsEvidence P) :
    DiscreteDifferenceOperatorsClosed P := by
  exact And.intro E.forwardClosed E.backwardClosed

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse