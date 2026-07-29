import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

structure AbstractControlSystem where
  stateSpace : Type u
  inputSpace : Type v
  outputSpace : Type w
  dynamics : stateSpace → inputSpace → stateSpace
  observationMap : stateSpace → outputSpace

structure ControllabilityProperty (S : AbstractControlSystem) where
  reachableSet : Set S.stateSpace
  controllabilityCondition : S.stateSpace → Prop
  reachableFromAnyState : Prop

structure ObservabilityProperty (S : AbstractControlSystem) where
  indistinguishableStates : Set (S.stateSpace × S.stateSpace)
  observabilityCondition : S.stateSpace → Prop
  stateDistinguishability : Prop

def SystemAdmissible (S : AbstractControlSystem) : Prop :=
  ControllabilityProperty S ∧ ObservabilityProperty S

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse
