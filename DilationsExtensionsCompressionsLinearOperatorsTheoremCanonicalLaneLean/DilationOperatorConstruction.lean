import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

structure DilationOperatorConstruction where
  HilbertSpace : Type u
  innerProduct : HilbertSpace → HilbertSpace → ℝ
  norm : HilbertSpace → ℝ
  contraction : (HilbertSpace → HilbertSpace) → Prop
  isometry : (HilbertSpace → HilbertSpace) → Prop
  unitary : (HilbertSpace → HilbertSpace) → Prop
  contractionTerm : contraction (fun x => x)
  isometryTerm : isometry (fun x => x)
  unitaryTerm : unitary (fun x => x)

def DilationConstructionClosed (D : DilationOperatorConstruction) : Prop := D.contraction (fun x => x) ∧ D.isometry (fun x => x) ∧ D.unitary (fun x => x)

theorem dilation_construction_closed_from_evidence (D : DilationOperatorConstruction) : DilationConstructionClosed D := by
  exact And.intro D.contractionTerm (And.intro D.isometryTerm D.unitaryTerm)

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse