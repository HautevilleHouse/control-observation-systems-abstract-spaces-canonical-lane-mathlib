import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsAbstractSpacesCanonicalLaneLean.ControlObservationAbstractSpace

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

structure ControllabilityGate (A : AbstractControlObservationSpace) where
  reachableSet : Set A.stateSpace
  fromInitial : ∀ s₀ : A.stateSpace, reachableSet.Contains s₀
  controllabilityCondition : A.admissibleControls.Nonempty

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse