import canonicalLaneMathlib.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.Data.List.Basic

namespace HautevilleHouse
namespace ComputationalIssuesComputerRoboticVisionCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

abbrev BitString := List Bool
abbrev Language := Set BitString

structure DecisionProcedure where
  accepts : BitString -> Bool

structure WitnessRelation where
  accepts : BitString -> BitString -> Prop

structure PolynomialCertificateBound where
  degree : Nat

structure RoboticVisionClassicalObject where
  language : Language
  witnessRelation : WitnessRelation
  bound : PolynomialCertificateBound

structure RoboticVisionAdmittedObject where
  classicalObject : RoboticVisionClassicalObject
  projectedLanguage : Language
  solver : DecisionProcedure

structure RoboticVisionEndgameState where
  admittedObject : RoboticVisionAdmittedObject

def Decides (M : DecisionProcedure) (L : Language) : Prop :=
  forall x : BitString, M.accepts x = true ↔ x ∈ L

end ComputationalIssuesComputerRoboticVisionCanonicalLaneLean
end HautevilleHouse