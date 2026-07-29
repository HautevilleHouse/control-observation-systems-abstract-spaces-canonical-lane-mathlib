import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

structure ControlObservationSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  controlAction : carrier → carrier
  observationMap : carrier → carrier
  controlLaw : Prop
  observationLaw : Prop

structure ControlObservationAdmittedObject where
  space : ControlObservationSpace
  controlLawHolds : space.controlLaw
  observationLawHolds : space.observationLaw
  conclusion : controlLawHolds ∧ observationLawHolds

structure AdmissibleClass where
  object : ControlObservationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.controlLawHolds ∧ A.object.observationLawHolds) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse