import Mathlib.Data.Fin.Basic

/-!
# Grid Definition Package
-/

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure GridDefinitionPackage where
  pointCount : ℕ
  stepSize : ℝ
  domain : Set ℝ
  uniformQ : Prop
  uniformQ_prop : uniformQ

structure GridDefinitionEvidence (G : GridDefinitionPackage) where
  domainClosed : G.uniformQ

def GridDefinitionClosed (G : GridDefinitionPackage) : Prop :=
  G.uniformQ

theorem grid_definition_closed_from_evidence (G : GridDefinitionPackage)
    (E : GridDefinitionEvidence G) : GridDefinitionClosed G := by
  exact E.domainClosed

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse