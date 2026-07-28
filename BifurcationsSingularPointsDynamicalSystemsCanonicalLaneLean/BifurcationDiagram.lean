import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

structure BifurcationDiagramPackage {D : DynamicalSystemFoundationPackage} where
  parameterSpace : Type u
  bifurcationSet : Set (parameterSpace × D.phaseSpace)
  codimensionOneTransitions : Prop
  genericUnfolding : Prop
  persistenceUnderPerturbation : Prop
  structuralStabilityRegions : Prop

structure BifurcationDiagramEvidence {D : DynamicalSystemFoundationPackage} (B : BifurcationDiagramPackage D) where
  bifurcationSetDefined : B.bifurcationSet = B.bifurcationSet
  codimensionOneTransitionsClosed : B.codimensionOneTransitions
  genericUnfoldingClosed : B.genericUnfolding
  persistenceUnderPerturbationClosed : B.persistenceUnderPerturbation
  structuralStabilityRegionsClosed : B.structuralStabilityRegions

def BifurcationDiagramClosed {D : DynamicalSystemFoundationPackage} (B : BifurcationDiagramPackage D) : Prop :=
  B.codimensionOneTransitions ∧ B.genericUnfolding ∧ B.persistenceUnderPerturbation ∧ B.structuralStabilityRegions

theorem bifurcation_diagram_closed_from_evidence {D : DynamicalSystemFoundationPackage} (B : BifurcationDiagramPackage D) (E : BifurcationDiagramEvidence B) : BifurcationDiagramClosed B := by
  exact And.intro E.codimensionOneTransitionsClosed (And.intro E.genericUnfoldingClosed (And.intro E.persistenceUnderPerturbationClosed E.structuralStabilityRegionsClosed))

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse