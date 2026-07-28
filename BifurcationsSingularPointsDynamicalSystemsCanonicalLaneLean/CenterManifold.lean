import HautevilleHouse.BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

structure CenterManifoldPackage where
  centerManifoldExists : Prop
  reductionToNormalForm : Prop
  stabilityDetermined : Prop
  localDynamicsClassified : Prop

structure CenterManifoldEvidence (C : CenterManifoldPackage) where
  centerManifoldExistsClosed : C.centerManifoldExists
  reductionToNormalFormClosed : C.reductionToNormalForm
  stabilityDeterminedClosed : C.stabilityDetermined
  localDynamicsClassifiedClosed : C.localDynamicsClassified

def CenterManifoldClosed (C : CenterManifoldPackage) : Prop :=
  C.centerManifoldExists ∧ C.reductionToNormalForm ∧
  C.stabilityDetermined ∧ C.localDynamicsClassified

theorem center_manifold_closed_from_evidence (C : CenterManifoldPackage)
    (E : CenterManifoldEvidence C) : CenterManifoldClosed C := by
  exact And.intro E.centerManifoldExistsClosed
    (And.intro E.reductionToNormalFormClosed
      (And.intro E.stabilityDeterminedClosed E.localDynamicsClassifiedClosed))

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse