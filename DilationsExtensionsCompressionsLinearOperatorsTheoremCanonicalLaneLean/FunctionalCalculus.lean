import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

structure FunctionalCalculusPackage where
  operator : Type u
  spectralMeasure : Type v
  borelFunctionalCalculus : Prop
  continuousFunctionalCalculus : Prop
  spectralMappingTheorem : Prop
  borelFunctionalCalculusTerm : borelFunctionalCalculus
  continuousFunctionalCalculusTerm : continuousFunctionalCalculus
  spectralMappingTheoremTerm : spectralMappingTheorem

def FunctionalCalculusClosed (F : FunctionalCalculusPackage) : Prop :=
  F.borelFunctionalCalculus ∧ F.continuousFunctionalCalculus ∧ F.spectralMappingTheorem

theorem functional_calculus_closed_from_evidence (F : FunctionalCalculusPackage) : FunctionalCalculusClosed F := by
  exact And.intro F.borelFunctionalCalculusTerm (And.intro F.continuousFunctionalCalculusTerm F.spectralMappingTheoremTerm)

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse