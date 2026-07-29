import DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean.OperatorAdmittedObject

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

structure DilationStructure (O : AdmittedOperator) where
  largerSpace : Type
  isometry : O.space → largerSpace
  dilatedOperator : largerSpace → largerSpace
  compressionFormula : Prop
  unitaryDilation : Prop
  minimality : Prop

def DilationClosed (D : DilationStructure) : Prop :=
  D.unitaryDilation ∧ D.minimality

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse
