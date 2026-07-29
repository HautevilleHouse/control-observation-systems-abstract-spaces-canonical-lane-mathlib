import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

structure ObservabilityPackage (A : AdmissibleClass) where
  observabilityGramian : Prop
  detectabilityCondition : Prop
  observationReconstruction : Prop

structure ObservabilityEvidence (A : AdmissibleClass) (O : ObservabilityPackage A) where
  observabilityGramianClosed : O.observabilityGramian
  detectabilityConditionClosed : O.detectabilityCondition
  observationReconstructionClosed : O.observationReconstruction

def ObservabilityClosed (A : AdmissibleClass) (O : ObservabilityPackage A) : Prop :=
  O.observabilityGramian ∧ O.detectabilityCondition ∧ O.observationReconstruction

theorem observability_closed_from_evidence (A : AdmissibleClass) (O : ObservabilityPackage A) (E : ObservabilityEvidence A O) : ObservabilityClosed A O := by
  exact And.intro E.observabilityGramianClosed (And.intro E.detectabilityConditionClosed E.observationReconstructionClosed)

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse