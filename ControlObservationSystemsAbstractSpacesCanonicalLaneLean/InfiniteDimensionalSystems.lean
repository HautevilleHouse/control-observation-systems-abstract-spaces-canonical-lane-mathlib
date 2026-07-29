import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

structure InfiniteDimensionalPackage (A : AdmissibleClass) where
  stateMapping : Prop
  outputMapping : Prop
  wellPosedness : Prop
  solvability : Prop

structure InfiniteDimensionalEvidence (A : AdmissibleClass) (I : InfiniteDimensionalPackage A) where
  stateMappingClosed : I.stateMapping
  outputMappingClosed : I.outputMapping
  wellPosednessClosed : I.wellPosedness
  solvabilityClosed : I.solvability

def InfiniteDimensionalClosed (A : AdmissibleClass) (I : InfiniteDimensionalPackage A) : Prop :=
  I.stateMapping ∧ I.outputMapping ∧
  I.wellPosedness ∧ I.solvability

theorem infinite_dimensional_closed_from_evidence (A : AdmissibleClass) (I : InfiniteDimensionalPackage A)
    (E : InfiniteDimensionalEvidence A I) : InfiniteDimensionalClosed A I := by
  exact And.intro E.stateMappingClosed
    (And.intro E.outputMappingClosed
      (And.intro E.wellPosednessClosed E.solvabilityClosed))

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse