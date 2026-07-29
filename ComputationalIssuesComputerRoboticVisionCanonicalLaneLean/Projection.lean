import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalIssuesComputerRoboticVisionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def roboticVisionProjection : Projection RoboticVisionEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem robotic_vision_projection_idempotent (x : RoboticVisionEndgameState) :
    roboticVisionProjection.toFun (roboticVisionProjection.toFun x) = roboticVisionProjection.toFun x := by
  exact roboticVisionProjection.idempotent x

end ComputationalIssuesComputerRoboticVisionCanonicalLaneLean
end HautevilleHouse