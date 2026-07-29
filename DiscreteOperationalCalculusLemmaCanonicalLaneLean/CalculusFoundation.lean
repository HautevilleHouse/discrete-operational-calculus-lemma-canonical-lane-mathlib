import DiscreteOperationalCalculusLemmaCanonicalLaneLean.GridDefinition

/-!
# Calculus Foundation Package
-/

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure CalculusFoundationPackage {G : GridDefinitionPackage} where
  forwardOperator : Type u
  backwardOperator : Type v
  discreteDerivative : Type w
  consistency : Prop
  stability : Prop

structure CalculusFoundationEvidence {G : GridDefinitionPackage}
    (C : CalculusFoundationPackage G) where
  consistencyClosed : C.consistency
  stabilityClosed : C.stability

def CalculusFoundationClosed {G : GridDefinitionPackage}
    (C : CalculusFoundationPackage G) : Prop :=
  C.consistency ∧ C.stability

theorem calculus_foundation_closed_from_evidence
    {G : GridDefinitionPackage} (C : CalculusFoundationPackage G)
    (E : CalculusFoundationEvidence C) : CalculusFoundationClosed C := by
  exact And.intro E.consistencyClosed E.stabilityClosed

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse