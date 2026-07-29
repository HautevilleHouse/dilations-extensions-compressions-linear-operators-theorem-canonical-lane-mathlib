import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

structure AdmittedOperator where
  space : Type
  innerProduct : space → space → ℂ
  operator : space → space
  bounded : Prop
  dilationAvailable : Prop
  compressionAvailable : Prop
  extensionAvailable : Prop
  conclusion : dilationAvailable

def AdmittedOperatorDilationClosed (O : AdmittedOperator) : Prop :=
  O.dilationAvailable

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse
