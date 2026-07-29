import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsAbstractSpacesCanonicalLaneLean.ControlObservationAbstractSpace

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

structure ObserverSystem (A : AbstractControlObservationSpace) where
  observerState : Type x
  observerDynamics : observerState → A.observationSpace → controlSpace → observerState
  observationError : observerState → A.stateSpace → Prop
  errorConvergence : ∀ (s : A.stateSpace) (z : observerState), observationError z s →
    eventually (λ t : ℕ => observationError (observerDynamics z (A.observationMap s) (someControl A)) (A.dynamics s (someControl A))) s
  someControl : A.controlSpace
  controlMembership : someControl ∈ A.admissibleControls

theorem observer_convergence (A : AbstractControlObservationSpace) (O : ObserverSystem A) :
  ∀ s : A.stateSpace, ∃ z : O.observerState, O.observationError z s := by
  intro s
  exact ⟨O.someControl, ?_⟩
  sorry

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse