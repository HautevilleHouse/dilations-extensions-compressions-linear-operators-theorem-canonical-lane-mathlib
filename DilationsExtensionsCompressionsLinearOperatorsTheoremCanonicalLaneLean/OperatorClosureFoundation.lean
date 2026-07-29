import DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean.DilationStructure
import DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean.CompressionStructure
import DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean.ExtensionStructure

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

structure OperatorClosureFoundation (O : AdmittedOperator) where
  dilation : DilationStructure O
  compression : CompressionStructure O
  extension : ExtensionStructure O
  bridgeFromDilation : DilationClosed dilation
  gateFromCompression : CompressionClosed compression
  gateFromExtension : ExtensionClosed extension

def OperatorClosureFoundationClosed (F : OperatorClosureFoundation O) : Prop :=
  DilationClosed F.dilation ∧ CompressionClosed F.compression ∧ ExtensionClosed F.extension

theorem operator_closure_foundation_closed_from_evidence (F : OperatorClosureFoundation O) :
    OperatorClosureFoundationClosed F := by
  exact And.intro F.bridgeFromDilation (And.intro F.gateFromCompression F.gateFromExtension)

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse
