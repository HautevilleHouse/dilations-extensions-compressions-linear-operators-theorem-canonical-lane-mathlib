import DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def operatorProjection : Projection OperatorEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem operator_projection_idempotent (x : OperatorEndgameState) :
    operatorProjection.toFun (operatorProjection.toFun x) = operatorProjection.toFun x := by
  exact operatorProjection.idempotent x

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse