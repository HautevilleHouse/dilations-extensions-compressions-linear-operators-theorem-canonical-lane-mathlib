import operatorAdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

structure SpectralDecompositionPackage where
  selfAdjointOperator : (Type u → Type u) → Prop
  spectralMeasureExists : Prop
  functionalCalculusDefined : Prop
  spectralResolution : Prop

structure SpectralDecompositionEvidence (S : SpectralDecompositionPackage) where
  selfAdjointOperatorClosed : S.selfAdjointOperator
  spectralMeasureExistsClosed : S.spectralMeasureExists
  functionalCalculusDefinedClosed : S.functionalCalculusDefined
  spectralResolutionClosed : S.spectralResolution

def SpectralDecompositionClosed (S : SpectralDecompositionPackage) : Prop :=
  S.selfAdjointOperator ∧ S.spectralMeasureExists ∧ S.functionalCalculusDefined ∧ S.spectralResolution

theorem spectral_decomposition_closed_from_evidence (S : SpectralDecompositionPackage) (E : SpectralDecompositionEvidence S) :
    SpectralDecompositionClosed S := by
  exact And.intro E.selfAdjointOperatorClosed
    (And.intro E.spectralMeasureExistsClosed
      (And.intro E.functionalCalculusDefinedClosed E.spectralResolutionClosed))

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse