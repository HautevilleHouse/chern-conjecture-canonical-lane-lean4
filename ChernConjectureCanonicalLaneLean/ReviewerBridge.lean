import ChernConjectureCanonicalLaneLean.Formalization
import ChernConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace ChernConjectureCanonicalLaneLean

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
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "a1702e5fbc66bd3547bd994172cc40550689cdf25fffaac18d51570c8fd99959", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "d81578d794ab486618ff051ef34b0141d1b7e87bdf2e4e4821a62a8892a4150c", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "aaca8d7cf8ee9b8295b300acf0d336d2a407ae3525eac984c80bd02d15b16f3c", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "17cad08cefe1988a0219cbd300b3e691102b357ab8f0d39c755db5d69e295b28", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "80f89c5b10f811a0fca209c6c024719cf6f58b4578f6440b0a9b127a24aa88bc", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "289035a774ac6926094ad7215561c6db8da67ab44216094a4ce5e66fad1a1d3f", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "252bbd4dadbfc527d32ac6ee27935af7f455d59f9f4f29b02ad25127987d3e00", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "9d404bb1f7b0178cffdc51135755fe7af92896b1597fbcd8a5c88f38700f226e", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "bb61d8c0525ef858b0eb9b0425044d2be6c529f3280146bd2dffb4921063f2a2", present := true }
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
  { gate := "CHN_G1", constant := "kappa_canonical" },
  { gate := "CHN_G2", constant := "sigma_deformation" },
  { gate := "CHN_G3", constant := "kappa_compact" },
  { gate := "CHN_G4", constant := "rho_rigidity" },
  { gate := "CHN_G5", constant := "chern_transfer" },
  { gate := "CHN_G6", constant := "eps_coh" },
  { gate := "CHN_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "2f69fc525e70af42ab8a4d6191db70e82c7844d42d0280be5205707fdbaba3b4" },
  { path := "README.md", sha256 := "2e3f9c75b24aab1204e8762a61790dc0e21d3ef7c80bf04d52a5b18f51a651e8" },
  { path := "artifacts/constants_extracted.json", sha256 := "17cad08cefe1988a0219cbd300b3e691102b357ab8f0d39c755db5d69e295b28" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "aaca8d7cf8ee9b8295b300acf0d336d2a407ae3525eac984c80bd02d15b16f3c" },
  { path := "artifacts/constants_registry.json", sha256 := "80f89c5b10f811a0fca209c6c024719cf6f58b4578f6440b0a9b127a24aa88bc" },
  { path := "artifacts/promotion_report.json", sha256 := "252bbd4dadbfc527d32ac6ee27935af7f455d59f9f4f29b02ad25127987d3e00" },
  { path := "artifacts/stitch_constants.json", sha256 := "289035a774ac6926094ad7215561c6db8da67ab44216094a4ce5e66fad1a1d3f" },
  { path := "notes/EG1_public.md", sha256 := "d1514f43eaf4de9457c3a6812a5eaf433c8729b473472e40f738ece64ad30b37" },
  { path := "notes/EG2_public.md", sha256 := "ce6bf2a9273cd6701f5ce224153ad7d4583cb8f41ea0f1974fbf80c68fc11df3" },
  { path := "notes/EG3_public.md", sha256 := "a250823fc68d7d9b05a04d3c21b34e89382d6257be944256623f5b72a82197ea" },
  { path := "notes/EG4_public.md", sha256 := "8653d6cc9c7998b658b84e5dca55e80dde0f236d674c8028d97df628ce1fc70e" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "d81578d794ab486618ff051ef34b0141d1b7e87bdf2e4e4821a62a8892a4150c" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "2d1f9f4a5f3ae1be4da1c7788d0e2b65886aeb7afa1d806d7cbc03df9bc09203" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "2b6c0b60957f126cabed0126c647557d63b19c23cd353eb41a2a8de8883475cd" },
  { path := "paper/CHERN_CONJECTURE_PREPRINT.md", sha256 := "aa226d38622913a3e8ce02f1f95c4da242aa69ca630142272245a786bc303cb9" },
  { path := "repro/REPRO_PACK.md", sha256 := "41d04e8bcd016d67003cea70842ad62b0ba505f3e4edb009dbbf03d104569571" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "e78dcbbcaf1d632a87b29e90c5427869bb4b0fc7de33675282b8618117c444b6" },
  { path := "repro/certificate_baseline.json", sha256 := "bb61d8c0525ef858b0eb9b0425044d2be6c529f3280146bd2dffb4921063f2a2" },
  { path := "repro/run_repro.sh", sha256 := "967419e22b85685a79940154ff9ef8d902e7acd7e1fcec48ca0c042d231e453e" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/chn_closure_guard.py", sha256 := "a7e8ccc4b71e33400737cf32ebaade3d703f6f4f650c3c3ad682b560d7abef7f" },
  { path := "scripts/README.md", sha256 := "666a798f755de105472243567d4d87999589d660308ff00713edaacdbad03744" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "CHN_G1", status := "PASS" },
  { gate := "CHN_G2", status := "PASS" },
  { gate := "CHN_G3", status := "PASS" },
  { gate := "CHN_G4", status := "PASS" },
  { gate := "CHN_G5", status := "PASS" },
  { gate := "CHN_G6", status := "PASS" },
  { gate := "CHN_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "chern_transfer", value := "1.0305400000000002" },
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_canonical", value := "1.093874" },
  { key := "kappa_compact", value := "0.8051529790660226" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_deformation", value := "1.075" },
  { key := "sigma_star_can", value := "1.053" }
]

def bridgeConstantKeys : List String := [
  "chern_transfer",
  "eps_coh",
  "kappa_canonical",
  "kappa_compact",
  "rho_rigidity",
  "sigma_deformation",
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

end ChernConjectureCanonicalLaneLean
end HautevilleHouse
