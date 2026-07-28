import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

structure BifurcationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BifurcationAdmittedObject where
  space : BifurcationSpace
  vectorField : carrier → carrier
  equilibriumPoint : carrier
  linearizationInvertible : Prop
  centerManifoldDimension : Nat
  conclusion : centerManifoldDimension = 2

structure BifurcationEndgameState where
  object : BifurcationAdmittedObject

def BifurcationWitnessClosed (O : BifurcationAdmittedObject) : Prop :=
  O.conclusion

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse