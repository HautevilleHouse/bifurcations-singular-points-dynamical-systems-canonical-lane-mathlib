import BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BifurcationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BifurcationAdmittedObject where
  space : BifurcationSpace
  smoothDynamicalSystem : Prop
  singularPointExists : Prop
  bifurcationOccurs : Prop
  centerManifoldExists : Prop
  conclusion : centerManifoldExists

structure BifurcationEndgameState where
  object : BifurcationAdmittedObject

def BifurcationWitnessClosed (O : BifurcationAdmittedObject) : Prop :=
  O.centerManifoldExists

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse