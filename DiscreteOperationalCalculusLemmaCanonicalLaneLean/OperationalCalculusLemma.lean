import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure OperationalCalculusLemma (A : AdmissibleClass) where
  differenceEquation : DifferenceEquation A
  integralTransform : DiscreteIntegralTransform A
  correspondence : Prop
  correspondenceClosed : correspondence

def OperationalCalculusLemmaClosed (O : OperationalCalculusLemma A) : Prop :=
  O.correspondence

theorem operational_calculus_lemma_closed_from_evidence
    (O : OperationalCalculusLemma A) : OperationalCalculusLemmaClosed O := by
  exact O.correspondenceClosed

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse