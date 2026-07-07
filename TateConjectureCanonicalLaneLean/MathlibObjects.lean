import TateConjectureCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.CategoryTheory.Category.Basic
import Mathlib.CategoryTheory.Functor.Basic
import Mathlib.FieldTheory.Galois.Basic
import Mathlib.AlgebraicGeometry.Morphisms.Basic

namespace HautevilleHouse
namespace TateConjectureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

universe u v

abbrev MathlibSchemeMorphismProperty.{w} : Type (w + 1) :=
  CategoryTheory.MorphismProperty AlgebraicGeometry.Scheme.{w}

def MathlibSchemeMorphismGate.{w} : Prop :=
  Nonempty (MathlibSchemeMorphismProperty.{w})

structure TheoremSpecificObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String
deriving Repr, DecidableEq

structure BigArchitectureSubstrate where
  automorphicParameter : Type u
  galoisParameter : Type v
  functorialTransfer : automorphicParameter -> galoisParameter -> Prop
  localCompatibility : Prop
  globalCompatibility : Prop
  cohomologyOrCycleRealization : Set String

structure AdmittedTheoremObject where
  object : TheoremSpecificObject
  substrate : BigArchitectureSubstrate
  localModelChecked : Prop
  localModelWitness : localModelChecked
  globalBridgeChecked : Prop
  globalBridgeWitness : globalBridgeChecked
  functorialityOrCycleGateChecked : Prop
  functorialityOrCycleGateWitness : functorialityOrCycleGateChecked
  schemeMorphismGateChecked : Prop
  schemeMorphismGateWitness : schemeMorphismGateChecked
  classicalRemainderCarried : formalizationCertificate.sourceConjectureClosureClaimed = false
  sourceKeyChecked : object.sourceKey = sourceRepository
  theoremObjectChecked : object.theoremObject = sourceDescription

structure ClosureState where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop

def theoremSpecificObject : TheoremSpecificObject := {
  sourceKey := sourceRepository,
  theoremObject := sourceDescription,
  claimBoundary := sourceTheoremBoundary.claimBoundary
}

def NativeBridgeClosed (O : AdmittedTheoremObject) : Prop :=
  O.object.sourceKey = sourceRepository ∧
  O.object.theoremObject = sourceDescription ∧
  O.localModelChecked ∧
  O.globalBridgeChecked ∧
  O.functorialityOrCycleGateChecked ∧
  O.schemeMorphismGateChecked ∧
  (formalizationCertificate.sourceConjectureClosureClaimed = false)

end TateConjectureCanonicalLaneLean
end HautevilleHouse
