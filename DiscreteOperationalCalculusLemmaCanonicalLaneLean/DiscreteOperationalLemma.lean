import DiscreteOperationalCalculusLemmaCanonicalLaneLean.DiscreteIntegralTransforms

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure DiscreteOperationalLemmaPackage {D : DiscreteOperatorSpace}
    {C : DiscreteCalculusPackage D}
    (T : DiscreteIntegralTransformPackage C) where
  operationalCalculusStatement : Prop
  symbolicCalculusProperties : Prop
  applicationToDifferenceEquations : Prop
  spectralMapping : Prop

structure DiscreteOperationalLemmaEvidence {D : DiscreteOperatorSpace}
    {C : DiscreteCalculusPackage D}
    {T : DiscreteIntegralTransformPackage C}
    (L : DiscreteOperationalLemmaPackage T) where
  operationalCalculusStatementClosed : L.operationalCalculusStatement
  symbolicCalculusPropertiesClosed : L.symbolicCalculusProperties
  applicationToDifferenceEquationsClosed : L.applicationToDifferenceEquations
  spectralMappingClosed : L.spectralMapping

def DiscreteOperationalLemmaClosed {D : DiscreteOperatorSpace}
    {C : DiscreteCalculusPackage D}
    {T : DiscreteIntegralTransformPackage C}
    (L : DiscreteOperationalLemmaPackage T) : Prop :=
  L.operationalCalculusStatement ∧ L.symbolicCalculusProperties ∧
  L.applicationToDifferenceEquations ∧ L.spectralMapping

theorem discrete_operational_lemma_closed_from_evidence
    {D : DiscreteOperatorSpace} {C : DiscreteCalculusPackage D}
    {T : DiscreteIntegralTransformPackage C}
    (L : DiscreteOperationalLemmaPackage T)
    (E : DiscreteOperationalLemmaEvidence L) :
    DiscreteOperationalLemmaClosed L := by
  exact And.intro E.operationalCalculusStatementClosed
    (And.intro E.symbolicCalculusPropertiesClosed
      (And.intro E.applicationToDifferenceEquationsClosed
        E.spectralMappingClosed))

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse