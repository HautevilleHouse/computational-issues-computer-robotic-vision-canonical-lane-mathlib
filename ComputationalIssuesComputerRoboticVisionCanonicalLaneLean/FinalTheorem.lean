import HautevilleHouse.ComputationalIssuesComputerRoboticVisionCanonicalLaneLean.EpistemicError

namespace HautevilleHouse
namespace ComputationalIssuesComputerRoboticVisionCanonicalLaneLean

def ConstrainedVisionClosure (A : AdmissibleClass) : Prop :=
  perceptionBridgeClosed A (PerceptualLane.mk ?_) ∧ epistemicGateClosed A (EpistemicGate.mk ?_)

theorem constrained_vision_endgame (A : AdmissibleClass) :
    ConstrainedVisionClosure A := by
  refine And.intro ?_ ?_
  · exact perception_bridge_from_admissible_class A (PerceptualLane.mk ?_)
  · exact epistemic_gate_from_admissible_class A (EpistemicGate.mk ?_)

end ComputationalIssuesComputerRoboticVisionCanonicalLaneLean
end HautevilleHouse