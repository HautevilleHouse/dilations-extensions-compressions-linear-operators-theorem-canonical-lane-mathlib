import DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean.ExtensionCompression

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

structure SpectralTheoremPackage {G : HilbertSpacePackage}
    {D : DilationOperatorPackage G} {E : ExtensionCompressionPackage D} where
  spectralMeasure : Type
  spectralProjector : G.Hilbert → G.Hilbert
  functionalCalculus : Prop
  spectralDecomposition : Prop

structure SpectralTheoremEvidence {G : HilbertSpacePackage}
    {D : DilationOperatorPackage G} {E : ExtensionCompressionPackage D}
    (S : SpectralTheoremPackage E) where
  functionalCalculusClosed : S.functionalCalculus
  spectralDecompositionClosed : S.spectralDecomposition

def SpectralTheoremClosed {G : HilbertSpacePackage}
    {D : DilationOperatorPackage G} {E : ExtensionCompressionPackage D}
    (S : SpectralTheoremPackage E) : Prop :=
  S.functionalCalculus ∧ S.spectralDecomposition

theorem spectral_theorem_closed_from_evidence
    {G : HilbertSpacePackage} {D : DilationOperatorPackage G}
    {E : ExtensionCompressionPackage D} (S : SpectralTheoremPackage E)
    (Ev : SpectralTheoremEvidence S) : SpectralTheoremClosed S := by
  exact And.intro Ev.functionalCalculusClosed Ev.spectralDecompositionClosed

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse