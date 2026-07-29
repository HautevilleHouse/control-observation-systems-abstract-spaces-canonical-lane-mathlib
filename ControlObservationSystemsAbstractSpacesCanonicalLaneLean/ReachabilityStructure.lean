import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

structure ReachabilityPackage (A : AdmissibleClass) where
  forwardReachableSet : Prop
  backwardReachableSet : Prop
  controllabilityCondition : Prop
  observabilityCondition : Prop

structure ReachabilityEvidence (A : AdmissibleClass) (R : ReachabilityPackage A) where
  forwardReachableSetClosed : R.forwardReachableSet
  backwardReachableSetClosed : R.backwardReachableSet
  controllabilityConditionClosed : R.controllabilityCondition
  observabilityConditionClosed : R.observabilityCondition

def ReachabilityClosed (A : AdmissibleClass) (R : ReachabilityPackage A) : Prop :=
  R.forwardReachableSet ∧ R.backwardReachableSet ∧
  R.controllabilityCondition ∧ R.observabilityCondition

theorem reachability_closed_from_evidence (A : AdmissibleClass) (R : ReachabilityPackage A)
    (E : ReachabilityEvidence A R) : ReachabilityClosed A R := by
  exact And.intro E.forwardReachableSetClosed
    (And.intro E.backwardReachableSetClosed
      (And.intro E.controllabilityConditionClosed E.observabilityConditionClosed))

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse