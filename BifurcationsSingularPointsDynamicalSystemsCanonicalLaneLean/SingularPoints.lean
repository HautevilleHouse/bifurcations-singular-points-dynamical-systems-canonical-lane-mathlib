import BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean.DynamicalSystems

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

structure SingularPointEvidence {D : DynamicalSystem} (P : SingularPoint D) where
  zeroVectorClosed : P.zeroVector
  hyperbolicityClosed : P.hyperbolicity

def SingularPointClosed {D : DynamicalSystem} (P : SingularPoint D) : Prop :=
  P.zeroVector ∧ P.hyperbolicity

theorem singular_point_closed_from_evidence {D : DynamicalSystem} (P : SingularPoint D) (E : SingularPointEvidence P) :
    SingularPointClosed P := by
  exact And.intro E.zeroVectorClosed E.hyperbolicityClosed

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse