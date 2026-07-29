import DilationExtensionCompressionPackage

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheorem

structure SpectralDecompositionPackage where
  operatorSpace : OperatorSpace
  spectrum : Prop
  spectralMeasure : Prop
  functionalCalculus : Prop
  projectionValuedMeasure : Prop

structure SpectralDecompositionEvidence (S : SpectralDecompositionPackage) where
  spectrumClosed : S.spectrum
  spectralMeasureClosed : S.spectralMeasure
  functionalCalculusClosed : S.functionalCalculus
  projectionValuedMeasureClosed : S.projectionValuedMeasure

def SpectralDecompositionClosed (S : SpectralDecompositionPackage) : Prop :=
  S.spectrum ∧ S.spectralMeasure ∧ S.functionalCalculus ∧ S.projectionValuedMeasure

theorem spectral_decomposition_closed_from_evidence
    (S : SpectralDecompositionPackage)
    (E : SpectralDecompositionEvidence S) :
    SpectralDecompositionClosed S := by
  exact And.intro E.spectrumClosed
    (And.intro E.spectralMeasureClosed
      (And.intro E.functionalCalculusClosed E.projectionValuedMeasureClosed))

end DilationsExtensionsCompressionsLinearOperatorsTheorem
end HautevilleHouse