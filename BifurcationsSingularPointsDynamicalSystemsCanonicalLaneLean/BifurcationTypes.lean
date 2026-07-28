import BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean.SingularPoints

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

structure BifurcationEvidence (B : BifurcationType) where
  conditionClosed : B.condition

def BifurcationClosed (B : BifurcationType) : Prop :=
  B.condition

theorem bifurcation_closed_from_evidence (B : BifurcationType) (E : BifurcationEvidence B) :
    BifurcationClosed B := by
  exact E.conditionClosed

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse