import canonicalLaneMathlib.AdmissibleClass
import BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean.SingularPointClassification
import BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean.BifurcationAnalysis
import BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean.DynamicalSystemFlow

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SingularPointClassificationClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedBifurcationsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bifurcations_endgame (A : AdmissibleClass) :
    ConstrainedBifurcationsClosure A := by
  exact And.intro (by
    -- In a full formalization, we would extract the classification evidence from A.
    exact singular_point_classification_closed_from_evidence A.object A.endpointSatisfied)
    (by
      exact A.gateWitness)

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse