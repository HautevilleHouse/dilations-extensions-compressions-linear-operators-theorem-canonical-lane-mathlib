import DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean.OperatorAdmittedObject

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

structure CompressionStructure (O : AdmittedOperator) where
  subspace : Set O.space
  compression : subspace → subspace
  compressionOfDilation : Prop
  isometryRelation : Prop

def CompressionClosed (C : CompressionStructure) : Prop :=
  C.compressionOfDilation ∧ C.isometryRelation

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse
