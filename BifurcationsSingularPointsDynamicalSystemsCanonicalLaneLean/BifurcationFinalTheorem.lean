import BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

def ConstrainedBifurcationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bifurcation_endgame (A : AdmissibleClass) :
    ConstrainedBifurcationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse