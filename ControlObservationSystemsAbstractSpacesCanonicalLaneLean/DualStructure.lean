import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

structure DualSystem (S : AbstractControlSystem) where
  dualStateSpace : Type u
  dualInputSpace : Type v
  dualOutputSpace : Type w
  dualDynamics : dualStateSpace → dualInputSpace → dualStateSpace
  dualObservationMap : dualStateSpace → dualOutputSpace
  dualityPairing : S.stateSpace × dualStateSpace → ℝ
  dualityPreservation : Prop

def DualityAdmissible (S : AbstractControlSystem) : Prop :=
  DualSystem S

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse
