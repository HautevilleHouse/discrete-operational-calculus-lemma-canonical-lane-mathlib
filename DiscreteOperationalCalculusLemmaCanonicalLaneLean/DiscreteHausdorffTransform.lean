import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure DiscreteHausdorffTransformPackage where
  domain : Type u
  codomain : Type v
  forwardTransform : (Nat -> domain) -> (Nat -> codomain)
  inverseTransform : (Nat -> codomain) -> (Nat -> domain)
  inversionIdentity : Prop
  convolutionCompatibility : Prop

structure DiscreteHausdorffTransformEvidence (H : DiscreteHausdorffTransformPackage) where
  inversionIdentityClosed : H.inversionIdentity
  convolutionCompatibilityClosed : H.convolutionCompatibility

def DiscreteHausdorffTransformClosed (H : DiscreteHausdorffTransformPackage) : Prop :=
  H.inversionIdentity ∧ H.convolutionCompatibility

theorem discrete_hausdorff_transform_closed_from_evidence
    (H : DiscreteHausdorffTransformPackage) (E : DiscreteHausdorffTransformEvidence H) :
    DiscreteHausdorffTransformClosed H := by
  exact And.intro E.inversionIdentityClosed E.convolutionCompatibilityClosed

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse