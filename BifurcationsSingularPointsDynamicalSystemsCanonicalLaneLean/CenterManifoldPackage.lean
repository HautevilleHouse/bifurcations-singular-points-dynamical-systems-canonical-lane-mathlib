import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

structure CenterManifoldPackage (D : DynamicalSystemFoundationPackage) (B : BifurcationDiagramPackage D) where
  centerManifold : Set (D.phaseSpace)
  tangentSpaceSplit : Prop
  centerManifoldInvariant : Prop
  reductionPrinciple : Prop
  centerManifoldSmoothness : Prop

structure CenterManifoldEvidence {D : DynamicalSystemFoundationPackage} {B : BifurcationDiagramPackage D} (C : CenterManifoldPackage D B) where
  tangentSpaceSplitClosed : C.tangentSpaceSplit
  centerManifoldInvariantClosed : C.centerManifoldInvariant
  reductionPrincipleClosed : C.reductionPrinciple
  centerManifoldSmoothnessClosed : C.centerManifoldSmoothness

def CenterManifoldClosed {D : DynamicalSystemFoundationPackage} {B : BifurcationDiagramPackage D} (C : CenterManifoldPackage D B) : Prop :=
  C.tangentSpaceSplit ∧ C.centerManifoldInvariant ∧ C.reductionPrinciple ∧ C.centerManifoldSmoothness

theorem center_manifold_closed_from_evidence {D : DynamicalSystemFoundationPackage} {B : BifurcationDiagramPackage D} (C : CenterManifoldPackage D B) (E : CenterManifoldEvidence C) : CenterManifoldClosed C := by
  exact And.intro E.tangentSpaceSplitClosed (And.intro E.centerManifoldInvariantClosed (And.intro E.reductionPrincipleClosed E.centerManifoldSmoothnessClosed))

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse