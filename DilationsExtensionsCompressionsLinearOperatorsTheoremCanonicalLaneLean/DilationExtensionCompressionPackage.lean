import OperatorAdmittedObject

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheorem

structure DilationExtensionCompressionPackage where
  sourceOperator : OperatorAdmittedObject
  targetOperator : OperatorAdmittedObject
  dilationExists : Prop
  extensionExists : Prop
  compressionExists : Prop
  isometricEmbedding : Prop

structure DilationExtensionCompressionEvidence (D : DilationExtensionCompressionPackage) where
  dilationExistsClosed : D.dilationExists
  extensionExistsClosed : D.extensionExists
  compressionExistsClosed : D.compressionExists
  isometricEmbeddingClosed : D.isometricEmbedding

def DilationExtensionCompressionClosed (D : DilationExtensionCompressionPackage) : Prop :=
  D.dilationExists ∧ D.extensionExists ∧ D.compressionExists ∧ D.isometricEmbedding

theorem dilation_extension_compression_closed_from_evidence
    (D : DilationExtensionCompressionPackage)
    (E : DilationExtensionCompressionEvidence D) :
    DilationExtensionCompressionClosed D := by
  exact And.intro E.dilationExistsClosed
    (And.intro E.extensionExistsClosed
      (And.intro E.compressionExistsClosed E.isometricEmbeddingClosed))

end DilationsExtensionsCompressionsLinearOperatorsTheorem
end HautevilleHouse