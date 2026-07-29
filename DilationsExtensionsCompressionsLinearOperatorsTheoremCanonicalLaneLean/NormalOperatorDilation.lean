import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

structure NormalOperatorDilationPackage where
  normalOperator : Type u
  unitaryDilation : Type u
  minimalStinespringDilation : Prop
  uniqueness : Prop
  minimalStinespringDilationTerm : minimalStinespringDilation
  uniquenessTerm : uniqueness

def NormalOperatorDilationClosed (N : NormalOperatorDilationPackage) : Prop :=
  N.minimalStinespringDilation ∧ N.uniqueness

theorem normal_operator_dilation_closed_from_evidence (N : NormalOperatorDilationPackage) : NormalOperatorDilationClosed N := by
  exact And.intro N.minimalStinespringDilationTerm N.uniquenessTerm

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse