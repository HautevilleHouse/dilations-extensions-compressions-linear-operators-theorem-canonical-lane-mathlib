import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

structure ExtensionOperator (H : Type) [NormedAddCommGroup H] [InnerProductSpace ℝ H] where
  subspace : Submodule ℝ H
  operatorOnSubspace : subspace → subspace
  extensionToH : H → H
  extendsOperator : ∀ x : subspace, extensionToH (x : H) = (operatorOnSubspace x : H)
  normPreserving : ‖extensionToH‖ = ‖operatorOnSubspace‖

structure CompressionOperator (H : Type) [NormedAddCommGroup H] [InnerProductSpace ℝ H] where
  subspace : Submodule ℝ H
  operatorOnH : H → H
  compression : H → subspace
  compressionAction : ∀ x : H, compression (operatorOnH x) = compression x
  normNonIncreasing : ∀ x : H, ‖compression x‖ ≤ ‖operatorOnH x‖

def ExtensionCompressionClosed (A : AdmissibleClass) (E : ExtensionOperator H) (C : CompressionOperator H) : Prop :=
  E.normPreserving ∧ C.normNonIncreasing

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse