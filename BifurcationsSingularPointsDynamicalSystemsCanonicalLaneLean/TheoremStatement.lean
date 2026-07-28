import HautevilleHouse.BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String := "bifurcations-singular-points-dynamical-systems-canonical-lane"
def sourceDescription : String := "Bifurcations and singular points of dynamical systems"
def sourceTheoremBoundary : String := "classical source boundary carried by formalization"

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary,
  manifoldConstrainedStatement := "admissible class closes bifurcation condition",
  certificateLane := "manifold_constrained",
  carriedRemainder := "classical remainder"
}

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse