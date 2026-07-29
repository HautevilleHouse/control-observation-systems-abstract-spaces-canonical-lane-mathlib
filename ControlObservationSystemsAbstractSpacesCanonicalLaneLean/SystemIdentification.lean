import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsAbstractSpacesCanonicalLaneLean.ControlObservationAbstractSpace

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

structure SystemIdentificationData (A : AbstractControlObservationSpace) where
  inputOutputMap : A.controlSpace → A.observationSpace → A.observationSpace
  consistencyCondition : ∀ (c : A.controlSpace) (o : A.observationSpace),
    ∃ s : A.stateSpace, A.observationMap s = o ∧ inputOutputMap c o = A.observationMap (A.dynamics s c)
  identifiability : Function.Surjective inputOutputMap

theorem identification_possible (A : AbstractControlObservationSpace) (I : SystemIdentificationData A) :
  ∀ c : A.controlSpace, ∃ f : A.observationSpace → A.observationSpace,
    ∀ o : A.observationSpace, ∃ s : A.stateSpace, A.observationMap s = o ∧ f o = A.observationMap (A.dynamics s c) := by
  intro c
  refine ⟨I.inputOutputMap c, ?_⟩
  intro o
  exact I.consistencyCondition c o

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse