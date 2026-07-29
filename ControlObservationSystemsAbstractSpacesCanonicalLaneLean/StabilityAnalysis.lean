import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

structure LyapunovFunction (S : AbstractControlSystem) where
  lyapunovCandidate : S.stateSpace → ℝ
  positiveDefinite : Prop
  derivativeNegative : Prop
  stabilityGuarantee : Prop

structure InputToStateStability (S : AbstractControlSystem) where
  issGain : ℝ → ℝ
  issCondition : Prop
  boundedInputBoundedState : Prop

def StabilityAdmissible (S : AbstractControlSystem) : Prop :=
  LyapunovFunction S ∧ InputToStateStability S

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse
