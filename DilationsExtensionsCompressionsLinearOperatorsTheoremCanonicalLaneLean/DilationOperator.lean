import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

structure DilationOperator (α : Type) [NormedAddCommGroup α] where
  T : α → α
  dilationFactor : ℝ
  factorOne : dilationFactor = 1
  factorPositive : dilationFactor > 0
  isLinear : IsLinearMap ℝ T
  isIsometry : ∀ x : α, ‖T x‖ = dilationFactor * ‖x‖

def DilationOperatorClosed (A : AdmissibleClass) (D : DilationOperator α) : Prop :=
  D.factorOne ∧ D.isLinear ∧ D.isIsometry

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse