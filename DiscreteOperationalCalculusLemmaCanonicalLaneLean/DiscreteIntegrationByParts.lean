import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure DiscreteIntegrationByPartsPackage where
  sumByPartsIdentity : Prop
  forwardBackwardRelation : Prop
  closedFormFormula : Prop
  identityClosed : sumByPartsIdentity
  relationClosed : forwardBackwardRelation
  formulaClosed : closedFormFormula

structure DiscreteIntegrationByPartsEvidence (P : DiscreteIntegrationByPartsPackage) where
  identityClosed : P.identityClosed
  relationClosed : P.relationClosed
  formulaClosed : P.formulaClosed

def DiscreteIntegrationByPartsClosed (P : DiscreteIntegrationByPartsPackage) : Prop :=
  P.identityClosed ∧ P.relationClosed ∧ P.formulaClosed

theorem discrete_integration_by_parts_closed_from_evidence
    (P : DiscreteIntegrationByPartsPackage) (E : DiscreteIntegrationByPartsEvidence P) :
    DiscreteIntegrationByPartsClosed P := by
  exact And.intro E.identityClosed (And.intro E.relationClosed E.formulaClosed)

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse