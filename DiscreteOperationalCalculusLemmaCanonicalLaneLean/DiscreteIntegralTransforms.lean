import DiscreteOperationalCalculusLemmaCanonicalLaneLean.DiscreteCalculus

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure DiscreteIntegralTransformPackage {D : DiscreteOperatorSpace}
    (C : DiscreteCalculusPackage D) where
  zTransform : Type u
  discreteFourierTransform : Type v
  convolutionTheorem : Prop
  inversionFormula : Prop
  convergenceProperties : Prop

structure DiscreteIntegralTransformEvidence {D : DiscreteOperatorSpace}
    {C : DiscreteCalculusPackage D}
    (T : DiscreteIntegralTransformPackage C) where
  convolutionTheoremClosed : T.convolutionTheorem
  inversionFormulaClosed : T.inversionFormula
  convergencePropertiesClosed : T.convergenceProperties

def DiscreteIntegralTransformClosed {D : DiscreteOperatorSpace}
    {C : DiscreteCalculusPackage D}
    (T : DiscreteIntegralTransformPackage C) : Prop :=
  T.convolutionTheorem ∧ T.inversionFormula ∧ T.convergenceProperties

theorem discrete_integral_transform_closed_from_evidence
    {D : DiscreteOperatorSpace} {C : DiscreteCalculusPackage D}
    (T : DiscreteIntegralTransformPackage C)
    (E : DiscreteIntegralTransformEvidence T) :
    DiscreteIntegralTransformClosed T := by
  exact And.intro E.convolutionTheoremClosed
    (And.intro E.inversionFormulaClosed E.convergencePropertiesClosed)

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse