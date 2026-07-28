import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

structure BifurcationAnalysisPackage {S : SingularPointClassificationPackage} where
  parameterSpace : Type u
  bifurcationSet : Set S.manifold × Set parameterSpace
  genericBifurcationTypes : Prop
  normalForms : Prop
  transversality : Prop

structure BifurcationAnalysisEvidence {S : SingularPointClassificationPackage}
    (B : BifurcationAnalysisPackage S) where
  genericBifurcationTypesClosed : B.genericBifurcationTypes
  normalFormsClosed : B.normalForms
  transversalityClosed : B.transversality

def BifurcationAnalysisClosed {S : SingularPointClassificationPackage}
    (B : BifurcationAnalysisPackage S) : Prop :=
  B.genericBifurcationTypes ∧ B.normalForms ∧ B.transversality

theorem bifurcation_analysis_closed_from_evidence
    {S : SingularPointClassificationPackage} (B : BifurcationAnalysisPackage S)
    (E : BifurcationAnalysisEvidence B) : BifurcationAnalysisClosed B := by
  exact And.intro E.genericBifurcationTypesClosed (And.intro E.normalFormsClosed E.transversalityClosed)

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse