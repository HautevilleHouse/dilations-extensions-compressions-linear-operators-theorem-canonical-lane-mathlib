import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

structure LinearOperatorFamily (X : Type) [NormedAddCommGroup X] where
  operators : Set (X → X)
  allLinear : ∀ T ∈ operators, IsLinearMap ℝ T
  allBounded : ∀ T ∈ operators, ∃ M : ℝ, ∀ x : X, ‖T x‖ ≤ M * ‖x‖

lemma linear_operator_bridge (X : Type) [NormedAddCommGroup X] (F : LinearOperatorFamily X) (A : AdmissibleClass) : Prop :=
  ∀ T ∈ F.operators, IsLinearMap ℝ T

theorem bridge_from_admissible_class (A : AdmissibleClass) (X : Type) [NormedAddCommGroup X] (F : LinearOperatorFamily X) :
  ∀ T ∈ F.operators, IsLinearMap ℝ T :=
  by
    intro T hT
    exact F.allLinear T hT

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse