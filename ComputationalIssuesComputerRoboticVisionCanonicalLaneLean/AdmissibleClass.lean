import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalIssuesComputerRoboticVisionCanonicalLaneLean

structure AdmissibleClass where
  lane : RoboticVisionAdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputationalIssuesComputerRoboticVisionCanonicalLaneLean
end HautevilleHouse