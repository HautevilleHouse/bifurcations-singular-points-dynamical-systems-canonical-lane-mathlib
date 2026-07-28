import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

structure SingularPointClassificationPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  vectorField : Type v
  equilibriumPoints : Set manifold
  hyperbolicity : Prop
  centerManifold : Prop
  indexTheory : Prop

structure SingularPointClassificationEvidence (S : SingularPointClassificationPackage) where
  hyperbolicityClosed : S.hyperbolicity
  centerManifoldClosed : S.centerManifold
  indexTheoryClosed : S.indexTheory

def SingularPointClassificationClosed (S : SingularPointClassificationPackage) : Prop :=
  S.hyperbolicity ∧ S.centerManifold ∧ S.indexTheory

theorem singular_point_classification_closed_from_evidence
    (S : SingularPointClassificationPackage) (E : SingularPointClassificationEvidence S) :
    SingularPointClassificationClosed S := by
  exact And.intro E.hyperbolicityClosed (And.intro E.centerManifoldClosed E.indexTheoryClosed)

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse