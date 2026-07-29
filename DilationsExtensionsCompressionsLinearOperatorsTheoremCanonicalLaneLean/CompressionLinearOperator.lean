import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

structure CompressionLinearOperatorPackage where
  HilbertSpace : Type u
  projection : (HilbertSpace → HilbertSpace) → Prop
  compression : (HilbertSpace → HilbertSpace) → (HilbertSpace → HilbertSpace) → Prop
  compressionOfIsometry : Prop
  compressionOfContraction : Prop
  projectionTerm : projection (fun x => x)
  compressionOfIsometryTerm : compressionOfIsometry
  compressionOfContractionTerm : compressionOfContraction

def CompressionPackageClosed (C : CompressionLinearOperatorPackage) : Prop :=
  C.projection (fun x => x) ∧ C.compressionOfIsometry ∧ C.compressionOfContraction

theorem compression_package_closed_from_evidence (C : CompressionLinearOperatorPackage) : CompressionPackageClosed C := by
  exact And.intro C.projectionTerm (And.intro C.compressionOfIsometryTerm C.compressionOfContractionTerm)

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse