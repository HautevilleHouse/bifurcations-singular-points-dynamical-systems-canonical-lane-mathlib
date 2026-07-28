import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

structure DynamicalSystem where
  manifold : Type u
  topology : TopologicalSpace manifold
  smooth : Prop
  vectorField : manifold → VectorSpaceOver ℝ (TangentSpace manifold)
  smoothness : Prop

def DynamicalSystemClosed (D : DynamicalSystem) : Prop :=
  D.smooth ∧ D.smoothness

structure SingularPoint (D : DynamicalSystem) where
  point : D.manifold
  zeroVector : D.vectorField point = 0
  linearization : LinearMap (TangentSpace D.manifold) (TangentSpace D.manifold)
  hyperbolicity : Prop

def SingularPointClosed {D : DynamicalSystem} (P : SingularPoint D) : Prop :=
  P.zeroVector ∧ P.hyperbolicity

structure BifurcationType where
  name : String
  condition : Prop

def BifurcationClosed (B : BifurcationType) : Prop :=
  B.condition

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse