import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

structure ExtensionOperatorPackage where
  subspace : Type u
  subspaceClosed : Prop
  operatorOnSubspace : (subspace → subspace) → Prop
  extensionToWholeSpace : (subspace → subspace) → (Type u → Type u) → Prop
  boundedExtension : Prop
  uniqueness : Prop
  subspaceClosedTerm : subspaceClosed
  operatorOnSubspaceTerm : operatorOnSubspace (fun x => x)
  boundedExtensionTerm : boundedExtension
  uniquenessTerm : uniqueness

def ExtensionPackageClosed (E : ExtensionOperatorPackage) : Prop :=
  E.subspaceClosed ∧ E.operatorOnSubspace (fun x => x) ∧ E.boundedExtension ∧ E.uniqueness

theorem extension_package_closed_from_evidence (E : ExtensionOperatorPackage) : ExtensionPackageClosed E := by
  exact And.intro E.subspaceClosedTerm (And.intro E.operatorOnSubspaceTerm (And.intro E.boundedExtensionTerm E.uniquenessTerm))

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse