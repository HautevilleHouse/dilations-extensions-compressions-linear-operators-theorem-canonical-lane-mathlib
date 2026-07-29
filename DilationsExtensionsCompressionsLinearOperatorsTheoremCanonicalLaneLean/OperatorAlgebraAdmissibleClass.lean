import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedOperator
  dilationClosed : Prop
  compressionClosed : Prop
  extensionClosed : Prop
  gateWitness : dilationClosed ∨ compressionClosed ∨ extensionClosed

def admittedClosure (A : AdmissibleClass) : Prop :=
  AdmittedOperatorDilationClosed A.object ∧ (A.dilationClosed ∨ A.compressionClosed ∨ A.extensionClosed)

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse
