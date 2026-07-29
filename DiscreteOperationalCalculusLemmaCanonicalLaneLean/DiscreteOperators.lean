import DiscreteOperationalCalculusLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure DiscreteOperatorSpace where
  grid : Type u
  forwardShift : (grid → ℝ) → (grid → ℝ)
  backwardShift : (grid → ℝ) → (grid → ℝ)
  forwardDifference : (grid → ℝ) → (grid → ℝ)
  backwardDifference : (grid → ℝ) → (grid → ℝ)
  shiftProperties : Prop
  differenceProperties : Prop

structure DiscreteOperatorSpaceEvidence (D : DiscreteOperatorSpace) where
  shiftPropertiesClosed : D.shiftProperties
  differencePropertiesClosed : D.differenceProperties

def DiscreteOperatorSpaceClosed (D : DiscreteOperatorSpace) : Prop :=
  D.shiftProperties ∧ D.differenceProperties

theorem discrete_operator_space_closed_from_evidence (D : DiscreteOperatorSpace)
    (E : DiscreteOperatorSpaceEvidence D) : DiscreteOperatorSpaceClosed D := by
  exact And.intro E.shiftPropertiesClosed E.differencePropertiesClosed

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse