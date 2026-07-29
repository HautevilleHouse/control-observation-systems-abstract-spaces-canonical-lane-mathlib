import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

structure AbstractSpaceObject where
  carrier : Type
  observationStructure : Prop
  controlInputs : Prop
  conclusion : observationStructure ∧ controlInputs

structure AdmissibleClass where
  object : AbstractSpaceObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.observationStructure ∧ A.object.controlInputs) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse