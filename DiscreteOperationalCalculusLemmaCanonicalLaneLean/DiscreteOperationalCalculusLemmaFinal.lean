import canonicalLaneMathlib.AdmissibleClass
import DiscreteOperationalCalculusLemmaCanonicalLaneLean.DiscreteDifferenceOperators
import DiscreteOperationalCalculusLemmaCanonicalLaneLean.DiscreteIntegrationByParts

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DiscreteDifferenceOperatorsClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedDiscreteOperationalCalculusClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem discrete_operational_calculus_endgame (A : AdmissibleClass) :
    ConstrainedDiscreteOperationalCalculusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse