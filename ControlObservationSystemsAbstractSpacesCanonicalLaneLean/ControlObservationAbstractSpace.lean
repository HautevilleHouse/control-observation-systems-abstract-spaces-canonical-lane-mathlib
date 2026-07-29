import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

structure AbstractControlObservationSpace where
  stateSpace : Type u
  observationSpace : Type v
  controlSpace : Type w
  dynamics : stateSpace → controlSpace → stateSpace
  observationMap : stateSpace → observationSpace
  admissibleControls : Set (controlSpace)
  admissibleControlsNonempty : admissibleControls.Nonempty

def stateObservationSystem (A : AbstractControlObservationSpace) : Prop :=
  ∀ (s : A.stateSpace) (c : A.admissibleControls),
    A.observationMap (A.dynamics s c) = A.observationMap s

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse