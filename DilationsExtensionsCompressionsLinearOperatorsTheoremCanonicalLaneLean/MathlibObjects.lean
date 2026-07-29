import DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HilbertSpace where
  carrier : Type
  innerProduct : carrier → carrier → ℝ
  norm : carrier → ℝ
  complete : Prop

structure OperatorAdmittedObject where
  space : HilbertSpace
  boundedLinearOperator : space.carrier → space.carrier
  selfAdjoint : Prop
  spectrum : Set ℝ
  conclusion : selfAdjoint

structure OperatorEndgameState where
  object : OperatorAdmittedObject

def OperatorWitnessClosed (O : OperatorAdmittedObject) : Prop :=
  O.selfAdjoint

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse