import DiscreteOperationalCalculusLemmaCanonicalLaneLean.DiscreteOperationalLemma
import DiscreteOperationalCalculusLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure DiscreteOperationalCalculusFoundation where
  operatorSpace : DiscreteOperatorSpace
  operatorSpaceEvidence : DiscreteOperatorSpaceEvidence operatorSpace
  calculus : DiscreteCalculusPackage operatorSpace
  calculusEvidence : DiscreteCalculusEvidence calculus
  integralTransforms : DiscreteIntegralTransformPackage calculus
  integralTransformsEvidence : DiscreteIntegralTransformEvidence integralTransforms
  lemma : DiscreteOperationalLemmaPackage integralTransforms
  lemmaEvidence : DiscreteOperationalLemmaEvidence lemma

def DiscreteOperationalCalculusFoundationClosed
    (F : DiscreteOperationalCalculusFoundation) : Prop :=
  DiscreteOperatorSpaceClosed F.operatorSpace ∧
  DiscreteCalculusClosed F.calculus ∧
  DiscreteIntegralTransformClosed F.integralTransforms ∧
  DiscreteOperationalLemmaClosed F.lemma

theorem discrete_operational_calculus_foundation_closed_from_evidence
    (F : DiscreteOperationalCalculusFoundation) :
    DiscreteOperationalCalculusFoundationClosed F := by
  exact And.intro (discrete_operator_space_closed_from_evidence F.operatorSpace F.operatorSpaceEvidence)
    (And.intro (discrete_calculus_closed_from_evidence F.calculus F.calculusEvidence)
      (And.intro (discrete_integral_transform_closed_from_evidence F.integralTransforms F.integralTransformsEvidence)
        (discrete_operational_lemma_closed_from_evidence F.lemma F.lemmaEvidence)))

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse