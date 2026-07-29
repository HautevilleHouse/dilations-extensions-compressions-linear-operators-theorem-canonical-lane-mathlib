import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

structure SzNagyDilationPackage where
  contractionOperator : Type u
  unitaryDilation : Type u
  dilationExists : Prop
  minimalDilation : Prop
  uniqueness : Prop
  dilationExistsTerm : dilationExists
  minimalDilationTerm : minimalDilation
  uniquenessTerm : uniqueness

def SzNagyDilationClosed (S : SzNagyDilationPackage) : Prop :=
  S.dilationExists ∧ S.minimalDilation ∧ S.uniqueness

theorem sz_nagy_dilation_closed_from_evidence (S : SzNagyDilationPackage) : SzNagyDilationClosed S := by
  exact And.intro S.dilationExistsTerm (And.intro S.minimalDilationTerm S.uniquenessTerm)

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse