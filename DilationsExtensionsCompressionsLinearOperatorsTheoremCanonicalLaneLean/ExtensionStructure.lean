import DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean.OperatorAdmittedObject

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

structure ExtensionStructure (O : AdmittedOperator) where
  containingSpace : Type
  extensionOperator : containingSpace → containingSpace
  invariantSubspace : Prop
  extensionOfDilation : Prop

def ExtensionClosed (E : ExtensionStructure) : Prop :=
  E.extensionOfDilation ∧ E.invariantSubspace

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse
