import HautevilleHouse.BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean.CenterManifold

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

structure NormalFormPackage where
  normalFormComputed : Prop
  unfoldedFamily : Prop
  bifurcationDiagramCharacterized : Prop
  versalDeformationGiven : Prop

structure NormalFormEvidence (N : NormalFormPackage) where
  normalFormComputedClosed : N.normalFormComputed
  unfoldedFamilyClosed : N.unfoldedFamily
  bifurcationDiagramCharacterizedClosed : N.bifurcationDiagramCharacterized
  versalDeformationGivenClosed : N.versalDeformationGiven

def NormalFormClosed (N : NormalFormPackage) : Prop :=
  N.normalFormComputed ∧ N.unfoldedFamily ∧
  N.bifurcationDiagramCharacterized ∧ N.versalDeformationGiven

theorem normal_form_closed_from_evidence (N : NormalFormPackage)
    (E : NormalFormEvidence N) : NormalFormClosed N := by
  exact And.intro E.normalFormComputedClosed
    (And.intro E.unfoldedFamilyClosed
      (And.intro E.bifurcationDiagramCharacterizedClosed E.versalDeformationGivenClosed))

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse