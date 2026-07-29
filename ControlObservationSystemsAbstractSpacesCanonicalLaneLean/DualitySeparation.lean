import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

structure DualityPackage (A : AdmissibleClass) where
  controllabilityObservabilityDuality : Prop
  separationPrinciple : Prop
  dualityAchieved : Prop

structure DualityEvidence (A : AdmissibleClass) (D : DualityPackage A) where
  controllabilityObservabilityDualityClosed : D.controllabilityObservabilityDuality
  separationPrincipleClosed : D.separationPrinciple
  dualityAchievedClosed : D.dualityAchieved

def DualityClosed (A : AdmissibleClass) (D : DualityPackage A) : Prop :=
  D.controllabilityObservabilityDuality ∧ D.separationPrinciple ∧ D.dualityAchieved

theorem duality_closed_from_evidence (A : AdmissibleClass) (D : DualityPackage A) (E : DualityEvidence A D) : DualityClosed A D := by
  exact And.intro E.controllabilityObservabilityDualityClosed (And.intro E.separationPrincipleClosed E.dualityAchievedClosed)

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse