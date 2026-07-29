import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

structure AbstractSpaceFoundation where
  stateSpace : Type u
  controlSpace : Type v
  observationSpace : Type w
  dynamicsLaw : Prop
  outputLaw : Prop
  stateSpaceTopology : TopologicalSpace stateSpace
  controlSpaceTopology : TopologicalSpace controlSpace
  observationSpaceTopology : TopologicalSpace observationSpace

structure FoundationEvidence (F : AbstractSpaceFoundation) where
  dynamicsLawClosed : F.dynamicsLaw
  outputLawClosed : F.outputLaw
  topologiesCompatible : Prop
  topologiesCompatibleClosed : topologiesCompatible

def FoundationClosed (F : AbstractSpaceFoundation) : Prop :=
  F.dynamicsLaw ∧ F.outputLaw ∧ F.dynamicsLaw ∧ F.outputLaw

theorem foundation_closed_from_evidence (F : AbstractSpaceFoundation) (E : FoundationEvidence F) : FoundationClosed F := by
  exact And.intro E.dynamicsLawClosed (And.intro E.outputLawClosed (And.intro E.dynamicsLawClosed E.outputLawClosed))

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse