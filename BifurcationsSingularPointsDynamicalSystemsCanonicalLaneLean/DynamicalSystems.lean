import BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

structure DynamicalSystemEvidence (D : DynamicalSystem) where
  smoothClosed : D.smooth
  smoothnessClosed : D.smoothness

def DynamicalSystemClosed (D : DynamicalSystem) : Prop :=
  D.smooth ∧ D.smoothness

theorem dynamical_system_closed_from_evidence (D : DynamicalSystem) (E : DynamicalSystemEvidence D) :
    DynamicalSystemClosed D := by
  exact And.intro E.smoothClosed E.smoothnessClosed

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse