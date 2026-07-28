import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

structure DynamicalSystemFoundationPackage where
  phaseSpace : Type u
  topology : TopologicalSpace phaseSpace
  vectorField : phaseSpace → VectorBundle phaseSpace
  flow : ℝ → phaseSpace → phaseSpace
  smoothness : ContDiff ∞ vectorField
  invariantManifold : Set phaseSpace

def DynamicalSystemFoundationClosed (D : DynamicalSystemFoundationPackage) : Prop :=
  D.smoothness ∧ (∀ x : D.phaseSpace, D.flow 0 x = x) ∧ (∀ t s x, D.flow (t + s) x = D.flow t (D.flow s x))

theorem dynamical_system_foundation_closed_from_evidence (D : DynamicalSystemFoundationPackage) (hsmooth : D.smoothness) (hflow0 : ∀ x : D.phaseSpace, D.flow 0 x = x) (hflowadd : ∀ t s x, D.flow (t + s) x = D.flow t (D.flow s x)) : DynamicalSystemFoundationClosed D := by
  exact And.intro hsmooth (And.intro (by intro x; exact hflow0 x) (by intro t s x; exact hflowadd t s x))

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse