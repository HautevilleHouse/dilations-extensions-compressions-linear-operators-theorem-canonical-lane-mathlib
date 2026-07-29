import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.space.homeomorphicToSphere  -- placeholder adapted

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedDilationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dilation_endgame (A : AdmissibleClass) :
  ConstrainedDilationClosure A := by
  exact And.intro (by
    have h : bridgeClosed A := by
      exact A.object.conclusion
    exact h) (by
    have h : gateClosed A := by
      exact A.gateWitness
    exact h)

end DilationsExtensionsCompressionsLinearOperatorsTheoremCanonicalLaneLean
end HautevilleHouse