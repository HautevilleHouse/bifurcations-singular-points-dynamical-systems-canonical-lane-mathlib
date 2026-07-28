import HautevilleHouse.BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean.NormalForms

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

structure SingularityTheoryPackage where
  finiteDeterminacy : Prop
  recognitionConditions : Prop
  classificationComplete : Prop
  genericityConditions : Prop

structure SingularityTheoryEvidence (S : SingularityTheoryPackage) where
  finiteDeterminacyClosed : S.finiteDeterminacy
  recognitionConditionsClosed : S.recognitionConditions
  classificationCompleteClosed : S.classificationComplete
  genericityConditionsClosed : S.genericityConditions

def SingularityTheoryClosed (S : SingularityTheoryPackage) : Prop :=
  S.finiteDeterminacy ∧ S.recognitionConditions ∧
  S.classificationComplete ∧ S.genericityConditions

theorem singularity_theory_closed_from_evidence (S : SingularityTheoryPackage)
    (E : SingularityTheoryEvidence S) : SingularityTheoryClosed S := by
  exact And.intro E.finiteDeterminacyClosed
    (And.intro E.recognitionConditionsClosed
      (And.intro E.classificationCompleteClosed E.genericityConditionsClosed))

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse