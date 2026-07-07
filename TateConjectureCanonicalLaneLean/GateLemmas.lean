import TateConjectureCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace TateConjectureCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end TateConjectureCanonicalLaneLean
end HautevilleHouse
