import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

structure OptimalControlProblem (S : AbstractControlSystem) where
  costFunctional : (S.stateSpace → S.inputSpace → ℝ) → ℝ
  admissibleControls : Set (S.stateSpace → S.inputSpace)
  hjbEquation : Prop
  optimalValueFunction : S.stateSpace → ℝ
  verificationTheorem : Prop

def OptimalControlAdmissible (S : AbstractControlSystem) : Prop :=
  OptimalControlProblem S

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse
