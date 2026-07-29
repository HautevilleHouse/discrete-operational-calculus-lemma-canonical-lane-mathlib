import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure DiscreteConvolutionAlgebraPackage where
  sequenceSpace : Type u
  convolutionProduct : sequenceSpace -> sequenceSpace -> sequenceSpace
  associativityIdentity : Prop
  commutativityCondition : Prop
  identityElement : Prop

structure DiscreteConvolutionAlgebraEvidence (C : DiscreteConvolutionAlgebraPackage) where
  associativityIdentityClosed : C.associativityIdentity
  commutativityConditionClosed : C.commutativityCondition
  identityElementClosed : C.identityElement

def DiscreteConvolutionAlgebraClosed (C : DiscreteConvolutionAlgebraPackage) : Prop :=
  C.associativityIdentity ∧ C.commutativityCondition ∧ C.identityElement

theorem discrete_convolution_algebra_closed_from_evidence
    (C : DiscreteConvolutionAlgebraPackage) (E : DiscreteConvolutionAlgebraEvidence C) :
    DiscreteConvolutionAlgebraClosed C := by
  exact And.intro E.associativityIdentityClosed
    (And.intro E.commutativityConditionClosed E.identityElementClosed)

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse