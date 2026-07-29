import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

structure StateReconstructionObserver (S : AbstractControlSystem) where
  observerDynamics : S.stateSpace → S.inputSpace → S.stateSpace
  observerUpdate : S.stateSpace → S.outputSpace → S.stateSpace
  convergenceCondition : Prop
  errorBound : Prop

structure ObserverGainSelection (S : AbstractControlSystem) where
  gainMap : S.stateSpace → S.inputSpace → S.stateSpace
  stabilityCondition : Prop
  optimalityCriterion : Prop

def ObserverAdmissible (S : AbstractControlSystem) : Prop :=
  StateReconstructionObserver S ∧ ObserverGainSelection S

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse
