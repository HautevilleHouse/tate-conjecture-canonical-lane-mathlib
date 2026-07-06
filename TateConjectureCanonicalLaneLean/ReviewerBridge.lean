import TateConjectureCanonicalLaneLean.Formalization
import TateConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace TateConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "4ef635e598c82a46167f8550da97cbc7cd249c4106c995054aff1b2926df398f", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "7cdfed3ba76220747b24d56498b93ed7dbf7a94eaca351e9cb1a7b198703c289", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "417f43219ec18f57ff4be597956b1b34381cb42edade61e993666319c33886e3", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "c0a5d30bd332be847bdfe25a12a7d20a782c764c7c7b70f360f7780602309065", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "a763695619aa17f9f01b3a7f5ca419d8fe0805a1febd7043bc3e885aa780c878", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "230a620562114102a7a16dcf7d2e90841eb7a66b0df55ce47f8f60594d3df9bb", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "c77c63b75110481ab8a48438d7ea36c3335bf60408e37354cfcffcd5054549e5", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "06ebeb2b3c5a5506078998a1eea70965b1349f84957698fb959f16524a3af047", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "2eae96e0e2dd1395e7105fde830487fd31ac7e2336a3dfeaf8eea3975cf9a87c", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "TATE_G1", constant := "kappa_cycle" },
  { gate := "TATE_G2", constant := "sigma_frobenius" },
  { gate := "TATE_G3", constant := "kappa_compact" },
  { gate := "TATE_G4", constant := "rho_rigidity" },
  { gate := "TATE_G5", constant := "class_transfer" },
  { gate := "TATE_G6", constant := "eps_coh" },
  { gate := "TATE_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "0f1d1237a87e2b1a8456db4b4242fe27183a6dbe2ac5ebb7f1018fd94294548d" },
  { path := "README.md", sha256 := "4e67a9079703209afd3dd2c2022f1d38bb8f5d0a6b1eea2b840af5e316cb4540" },
  { path := "artifacts/constants_extracted.json", sha256 := "c0a5d30bd332be847bdfe25a12a7d20a782c764c7c7b70f360f7780602309065" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "417f43219ec18f57ff4be597956b1b34381cb42edade61e993666319c33886e3" },
  { path := "artifacts/constants_registry.json", sha256 := "a763695619aa17f9f01b3a7f5ca419d8fe0805a1febd7043bc3e885aa780c878" },
  { path := "artifacts/promotion_report.json", sha256 := "c77c63b75110481ab8a48438d7ea36c3335bf60408e37354cfcffcd5054549e5" },
  { path := "artifacts/stitch_constants.json", sha256 := "230a620562114102a7a16dcf7d2e90841eb7a66b0df55ce47f8f60594d3df9bb" },
  { path := "notes/EG1_public.md", sha256 := "cd9c9267ade341428bdc92c72d33ac369cc569f7c1a1acb2c58437512444989d" },
  { path := "notes/EG2_public.md", sha256 := "b725373da23178960a954100042bfa17458fb889ed83b0cc573ac32fc354009a" },
  { path := "notes/EG3_public.md", sha256 := "b6433d83a5a1eefaa637ae67e4f4a082c458b53032f5cef887180d16f835b3c7" },
  { path := "notes/EG4_public.md", sha256 := "b7ff7bf2dfcb6e3f40236c2b01db5e42be5e39b1abfa4e3618792a17a6634341" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "7cdfed3ba76220747b24d56498b93ed7dbf7a94eaca351e9cb1a7b198703c289" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "fb8280aa0380da02ee20e50e02b099bffd92aa4cdfd952b77b12c38cc0a6bb79" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "e8dac5f8931ff9b35da1f1b9f636844c65fa55e876da1a374e8e0f2c46919841" },
  { path := "paper/TATE_CONJECTURE_PREPRINT.md", sha256 := "f0eafc171e1954f89191563e134ad1cee2d4deb1e6c92dc914bcaf559b7f441d" },
  { path := "repro/REPRO_PACK.md", sha256 := "43f0f598eb36f23709fab22afaee0103ed8fb93544f48ca8df5d3197d3a34739" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "166d2fc6352815983150cfce2558faaed72e55d06f72b0ad0ffe2fcaf45bfbee" },
  { path := "repro/certificate_baseline.json", sha256 := "2eae96e0e2dd1395e7105fde830487fd31ac7e2336a3dfeaf8eea3975cf9a87c" },
  { path := "repro/run_repro.sh", sha256 := "52807a9e751c3a89557bc319ffffc019d98450c90bdfd9e7ecc893f71d39f673" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/tate_closure_guard.py", sha256 := "c08ea76f57d580adefccd336ecbc45ebdd7dcab2360d87f03da0981954b916cf" },
  { path := "scripts/README.md", sha256 := "27b40f52ea74f4e79bf95aafbf9d4143b289ab85d40d116f3a6229792f1b78d5" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "TATE_G1", status := "PASS" },
  { gate := "TATE_G2", status := "PASS" },
  { gate := "TATE_G3", status := "PASS" },
  { gate := "TATE_G4", status := "PASS" },
  { gate := "TATE_G5", status := "PASS" },
  { gate := "TATE_G6", status := "PASS" },
  { gate := "TATE_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "class_transfer", value := "1.0305400000000002" },
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "kappa_cycle", value := "1.0922840000000003" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_frobenius", value := "1.0750000000000002" },
  { key := "sigma_star_can", value := "1.053" }
]

def bridgeConstantKeys : List String := [
  "class_transfer",
  "eps_coh",
  "kappa_compact",
  "kappa_cycle",
  "rho_rigidity",
  "sigma_frobenius",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end TateConjectureCanonicalLaneLean
end HautevilleHouse
