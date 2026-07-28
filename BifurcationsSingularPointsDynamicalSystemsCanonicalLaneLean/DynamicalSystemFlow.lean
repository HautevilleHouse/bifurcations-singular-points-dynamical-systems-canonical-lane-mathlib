import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

structure DynamicalSystemFlowPackage {S : SingularPointClassificationPackage} where
  timeDomain : Type u
  flow : timeDomain → S.manifold → S.manifold
  invariantSets : Prop
  limitSets : Prop
  stabilityProperties : Prop

structure DynamicalSystemFlowEvidence {S : SingularPointClassificationPackage}
    (D : DynamicalSystemFlowPackage S) where
  invariantSetsClosed : D.invariantSets
  limitSetsClosed : D.limitSets
  stabilityPropertiesClosed : D.stabilityProperties

def DynamicalSystemFlowClosed {S : SingularPointClassificationPackage}
    (D : DynamicalSystemFlowPackage S) : Prop :=
  D.invariantSets ∧ D.limitSets ∧ D.stabilityProperties

theorem dynamical_system_flow_closed_from_evidence
    {S : SingularPointClassificationPackage} (D : DynamicalSystemFlowPackage S)
    (E : DynamicalSystemFlowEvidence D) : DynamicalSystemFlowClosed D := by
  exact And.intro E.invariantSetsClosed (And.intro E.limitSetsClosed E.stabilityPropertiesClosed)

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse