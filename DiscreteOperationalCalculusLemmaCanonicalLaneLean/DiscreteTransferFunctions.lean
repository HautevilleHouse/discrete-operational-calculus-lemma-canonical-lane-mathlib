import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscreteOperationalCalculusLemmaCanonicalLaneLean

structure DiscreteTransferFunctionPackage where
  inputSpace : Type u
  outputSpace : Type v
  kernel : (Nat -> inputSpace) -> (Nat -> outputSpace)
  spectrumCondition : Prop
  stabilityCondition : Prop
  boundednessProp : Prop

structure DiscreteTransferFunctionEvidence (T : DiscreteTransferFunctionPackage) where
  spectrumConditionClosed : T.spectrumCondition
  stabilityConditionClosed : T.stabilityCondition
  boundednessPropClosed : T.boundednessProp

def DiscreteTransferFunctionClosed (T : DiscreteTransferFunctionPackage) : Prop :=
  T.spectrumCondition ∧ T.stabilityCondition ∧ T.boundednessProp

theorem discrete_transfer_function_closed_from_evidence
    (T : DiscreteTransferFunctionPackage) (E : DiscreteTransferFunctionEvidence T) :
    DiscreteTransferFunctionClosed T := by
  exact And.intro E.spectrumConditionClosed
    (And.intro E.stabilityConditionClosed E.boundednessPropClosed)

end DiscreteOperationalCalculusLemmaCanonicalLaneLean
end HautevilleHouse