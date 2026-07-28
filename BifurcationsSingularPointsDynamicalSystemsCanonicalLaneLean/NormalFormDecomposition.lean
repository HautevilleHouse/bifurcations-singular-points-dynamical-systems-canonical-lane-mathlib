import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

structure NormalFormDecompositionPackage {D : DynamicalSystemFoundationPackage} {B : BifurcationDiagramPackage D} (S : SingularPointClassificationPackage (C : CenterManifoldPackage D B)) where
  linearPartJordan : Prop
  resonantTermsRemoved : Prop
  finitelyDetermined : Prop
  normalFormUnique : Prop
  hypernormalizationSteps : Prop

structure NormalFormDecompositionEvidence {D : DynamicalSystemFoundationPackage} {B : BifurcationDiagramPackage D} {C : CenterManifoldPackage D B} {S : SingularPointClassificationPackage C} (N : NormalFormDecompositionPackage S) where
  linearPartJordanClosed : N.linearPartJordan
  resonantTermsRemovedClosed : N.resonantTermsRemoved
  finitelyDeterminedClosed : N.finitelyDetermined
  normalFormUniqueClosed : N.normalFormUnique
  hypernormalizationStepsClosed : N.hypernormalizationSteps

def NormalFormDecompositionClosed {D : DynamicalSystemFoundationPackage} {B : BifurcationDiagramPackage D} {C : CenterManifoldPackage D B} {S : SingularPointClassificationPackage C} (N : NormalFormDecompositionPackage S) : Prop :=
  N.linearPartJordan ∧ N.resonantTermsRemoved ∧ N.finitelyDetermined ∧ N.normalFormUnique ∧ N.hypernormalizationSteps

theorem normal_form_decomposition_closed_from_evidence {D : DynamicalSystemFoundationPackage} {B : BifurcationDiagramPackage D} {C : CenterManifoldPackage D B} {S : SingularPointClassificationPackage C} (N : NormalFormDecompositionPackage S) (E : NormalFormDecompositionEvidence N) : NormalFormDecompositionClosed N := by
  exact And.intro E.linearPartJordanClosed (And.intro E.resonantTermsRemovedClosed (And.intro E.finitelyDeterminedClosed (And.intro E.normalFormUniqueClosed E.hypernormalizationStepsClosed)))

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse