import canonicalLaneMathlib.AdmissibleClass
import DiscreteOperationalCalculusLemmaCanonicalLaneLean.DiscreteLemmaStatement

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

def ConstrainedDiscreteCalculusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_discrete_calculus_endgame (A : AdmissibleClass) :
    ConstrainedDiscreteCalculusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse