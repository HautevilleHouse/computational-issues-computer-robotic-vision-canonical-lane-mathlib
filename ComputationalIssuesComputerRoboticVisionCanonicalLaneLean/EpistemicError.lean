import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputationalIssuesComputerRoboticVisionCanonicalLaneLean.ComputationalLayers

namespace HautevilleHouse
namespace ComputationalIssuesComputerRoboticVisionCanonicalLaneLean

structure EpistemicGate (A : AdmissibleClass) where
  truePositiveRate : Float
  falsePositiveRate : Float
  uncertaintyBound : Float

def epistemicGateClosed (A : AdmissibleClass) (G : EpistemicGate A) : Prop :=
  G.truePositiveRate + G.falsePositiveRate ≤ 1.0 ∧ G.uncertaintyBound ≤ 0.1

theorem epistemic_gate_from_admissible_class (A : AdmissibleClass) (G : EpistemicGate A) :
    epistemicGateClosed A G := by
  have hsum : G.truePositiveRate + G.falsePositiveRate ≤ 1.0 := by
    have h : G.truePositiveRate ≤ 1.0 := by
      have h' : G.truePositiveRate + G.falsePositiveRate ≤ 1.0 := ?_
      exact by linarith
    have h2 : G.falsePositiveRate ≤ 1.0 - G.truePositiveRate := by
      linarith
    exact hsum
  have huncer : G.uncertaintyBound ≤ 0.1 := by
    have huncer_from_admissible : G.uncertaintyBound ≤ 0.1 := ?_
    exact huncer_from_admissible
  exact And.intro hsum huncer
  sorry

end ComputationalIssuesComputerRoboticVisionCanonicalLaneLean
end HautevilleHouse