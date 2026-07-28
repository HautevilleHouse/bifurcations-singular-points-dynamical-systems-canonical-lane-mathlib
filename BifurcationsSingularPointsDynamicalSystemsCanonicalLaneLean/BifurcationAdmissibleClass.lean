import BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean

structure AdmissibleClass where
  object : BifurcationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BifurcationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BifurcationsSingularPointsDynamicalSystemsCanonicalLaneLean
end HautevilleHouse