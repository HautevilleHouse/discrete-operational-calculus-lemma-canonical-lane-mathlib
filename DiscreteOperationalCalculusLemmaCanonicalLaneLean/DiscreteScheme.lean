import DiscreteOperationalCalculusLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure DiscreteSchemePackage where
  discreteFunctionalCalculus : Type u
  operationalCalculus : Type v
  discreteApproximation : Prop
  convergenceToContinuous : Prop
  errorBounds : Prop

structure DiscreteSchemeEvidence (D : DiscreteSchemePackage) where
  discreteApproximationClosed : D.discreteApproximation
  convergenceToContinuousClosed : D.convergenceToContinuous
  errorBoundsClosed : D.errorBounds

def DiscreteSchemeClosed (D : DiscreteSchemePackage) : Prop :=
  D.discreteApproximation ∧ D.convergenceToContinuous ∧ D.errorBounds

theorem discrete_scheme_closed_from_evidence (D : DiscreteSchemePackage) (E : DiscreteSchemeEvidence D) :
    DiscreteSchemeClosed D := by
  exact And.intro E.discreteApproximationClosed (And.intro E.convergenceToContinuousClosed E.errorBoundsClosed)

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse