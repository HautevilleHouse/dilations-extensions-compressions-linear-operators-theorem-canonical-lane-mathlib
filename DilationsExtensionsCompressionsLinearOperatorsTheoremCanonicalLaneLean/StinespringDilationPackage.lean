import DilationExtensionCompressionPackage

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheorem

structure StinespringDilationPackage where
  cpMap : Type u
  dilationSpace : Type v
  dilationExists : Prop
  minimalStinespring : Prop
  uniqueness : Prop

structure StinespringDilationEvidence (S : StinespringDilationPackage) where
  dilationExistsClosed : S.dilationExists
  minimalStinespringClosed : S.minimalStinespring
  uniquenessClosed : S.uniqueness

def StinespringDilationClosed (S : StinespringDilationPackage) : Prop :=
  S.dilationExists ∧ S.minimalStinespring ∧ S.uniqueness

theorem stinespring_dilation_closed_from_evidence
    (S : StinespringDilationPackage)
    (E : StinespringDilationEvidence S) :
    StinespringDilationClosed S := by
  exact And.intro E.dilationExistsClosed
    (And.intro E.minimalStinespringClosed E.uniquenessClosed)

end DilationsExtensionsCompressionsLinearOperatorsTheorem
end HautevilleHouse