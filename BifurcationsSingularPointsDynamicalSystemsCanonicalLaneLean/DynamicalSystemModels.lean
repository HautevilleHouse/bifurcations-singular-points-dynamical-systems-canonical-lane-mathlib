import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

structure DynamicalSystem where
  PhasePoint : Type
  PhaseSpace : TopologicalSpace PhasePoint
  Parameter : Type
  VectorField : PhasePoint × Parameter → VectorBundle PhasePoint
  smooth : Prop

structure SingularPoint (sys : DynamicalSystem) (p : sys.Parameter) where
  point : sys.PhasePoint
  vanishes : sys.VectorField (point, p) = 0

def singularPointType (sys : DynamicalSystem) (sp : SingularPoint sys p) : Prop :=
  -- classification: hyperbolic, nonhyperbolic, etc.
  True

structure BifurcationPackage (sys : DynamicalSystem) where
  parameterDimension : Nat
  bifurcationSet : Set sys.Parameter
  genericCondition : Prop

def DynamicalSystemClosed (sys : DynamicalSystem) : Prop :=
  sys.smooth

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse