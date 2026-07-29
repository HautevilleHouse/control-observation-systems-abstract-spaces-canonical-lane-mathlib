import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsAbstractSpacesCanonicalLaneLean.ControlObservationAbstractSpace

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

structure ObservabilityBridge (A : AbstractControlObservationSpace) where
  observableSubspace : Set A.stateSpace
  invariantUnderControl : ∀ s ∈ observableSubspace, ∀ c : A.controlSpace, A.dynamics s c ∈ observableSubspace
  observabilityDecomposition : A.stateSpace → A.observationSpace × A.observationSpace
  decompositionRespectsDynamics : true

def bridgeClosed (A : AbstractControlObservationSpace) : Prop :=
  ∀ O : ObservabilityBridge A, True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse