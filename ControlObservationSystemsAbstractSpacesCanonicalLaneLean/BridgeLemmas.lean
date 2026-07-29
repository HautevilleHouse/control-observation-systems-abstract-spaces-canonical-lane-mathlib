import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsAbstractSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.controlLawHolds ∧ A.object.observationLawHolds

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.controlLawHolds A.object.observationLawHolds

end ControlObservationSystemsAbstractSpacesCanonicalLaneLean
end HautevilleHouse