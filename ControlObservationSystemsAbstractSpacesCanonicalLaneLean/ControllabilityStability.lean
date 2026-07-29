import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

structure ControllabilityPackage (A : AdmissibleClass) where
  reachableSetCovered : Prop
  feedbackStabilization : Prop
  controllabilityAchieved : Prop

structure ControllabilityEvidence (A : AdmissibleClass) (C : ControllabilityPackage A) where
  reachableSetCoveredClosed : C.reachableSetCovered
  feedbackStabilizationClosed : C.feedbackStabilization
  controllabilityAchievedClosed : C.controllabilityAchieved

def ControllabilityClosed (A : AdmissibleClass) (C : ControllabilityPackage A) : Prop :=
  C.reachableSetCovered ∧ C.feedbackStabilization ∧ C.controllabilityAchieved

theorem controllability_closed_from_evidence (A : AdmissibleClass) (C : ControllabilityPackage A) (E : ControllabilityEvidence A C) : ControllabilityClosed A C := by
  exact And.intro E.reachableSetCoveredClosed (And.intro E.feedbackStabilizationClosed E.controllabilityAchievedClosed)

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse