import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

structure ObserverPackage (A : AdmissibleClass) where
  observerDynamics : Prop
  errorDynamics : Prop
  convergenceCondition : Prop
  separationPrincipleHolds : Prop

structure ObserverEvidence (A : AdmissibleClass) (O : ObserverPackage A) where
  observerDynamicsClosed : O.observerDynamics
  errorDynamicsClosed : O.errorDynamics
  convergenceConditionClosed : O.convergenceCondition
  separationPrincipleHoldsClosed : O.separationPrincipleHolds

def ObserverClosed (A : AdmissibleClass) (O : ObserverPackage A) : Prop :=
  O.observerDynamics ∧ O.errorDynamics ∧
  O.convergenceCondition ∧ O.separationPrincipleHolds

theorem observer_closed_from_evidence (A : AdmissibleClass) (O : ObserverPackage A)
    (E : ObserverEvidence A O) : ObserverClosed A O := by
  exact And.intro E.observerDynamicsClosed
    (And.intro E.errorDynamicsClosed
      (And.intro E.convergenceConditionClosed E.separationPrincipleHoldsClosed))

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse