import BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

structure BifurcationRouteObligations where
  centerManifoldReduction : Prop
  normalFormAnalysis : Prop
  bifurcationDiagram : Prop

def BifurcationRouteClosed (R : BifurcationRouteObligations) : Prop :=
  R.centerManifoldReduction ∧ R.normalFormAnalysis ∧ R.bifurcationDiagram

theorem bifurcation_route_closed_from_evidence (R : BifurcationRouteObligations) (h1 : R.centerManifoldReduction) (h2 : R.normalFormAnalysis) (h3 : R.bifurcationDiagram) :
    BifurcationRouteClosed R := by
  exact And.intro h1 (And.intro h2 h3)

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse