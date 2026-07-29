import DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : OperatorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  OperatorWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse