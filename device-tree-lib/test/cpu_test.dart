import 'package:device_tree_lib/all.dart';
import 'package:test/test.dart';

const irisReport = {
  "CPU": [
    {
      "family": "0x19 (25)",
      "stepping": "0",
      "microcode": "0xA50000B",
      "model": "AMD Ryzen 9 5900HX with Radeon Graphics",
      "model-id": "0x50 (80)",
      "type": "MT MCP",
      "bits": 64,
      "arch": "Zen 3",
      "Info": "",
      "socket": "FP6"
    },
    {
      "tpc": 2,
      "L2": "4 MiB",
      "Topology": "",
      "threads": 16,
      "L1": "512 KiB",
      "smt": "enabled",
      "cores": 8,
      "cache": "",
      "cpus": "1",
      "L3": "16 MiB",
      "desc": "d-8x32 KiB; i-8x32 KiB"
    },
    {
      "14": 1200,
      "12": 1200,
      "10": 1200,
      "4": 1200,
      "min/max": "1200/4679",
      "2": 1200,
      "cores": "",
      "driver": "acpi-cpufreq",
      "8": 1200,
      "1": 1200,
      "avg": 1200,
      "6": 1200,
      "5": 1200,
      "13": 1200,
      "boost": "enabled",
      "ext-clock": "100 MHz",
      "governor": "schedutil",
      "16": 1200,
      "3": 1200,
      "11": 1200,
      "7": 1200,
      "Speed (MHz)": "",
      "volts": "1.2 V",
      "9": 1200,
      "bogomips": 105403,
      "15": 1200,
      "scaling": "",
      "base/boost": "3300/4650"
    },
    {
      "Flags":
          "3dnowprefetch abm adx aes aperfmperf apic arat avic avx avx2 bmi1 bmi2 bpext cat_l3 cdp_l3 clflush clflushopt clwb clzero cmov cmp_legacy constant_tsc cpb cpuid cqm cqm_llc cqm_mbm_local cqm_mbm_total cqm_occup_llc cr8_legacy cx16 cx8 de decodeassists erms extapic extd_apicid f16c flushbyasid fma fpu fsgsbase fsrm fxsr fxsr_opt ht hw_pstate ibpb ibrs ibs invpcid irperf lahf_lm lbrv lm mba mca mce misalignsse mmx mmxext monitor movbe msr mtrr mwaitx nonstop_tsc nopl npt nrip_save nx ospke osvw overflow_recov pae pat pausefilter pclmulqdq pdpe1gb perfctr_core perfctr_llc perfctr_nb pfthreshold pge pku pni popcnt pse pse36 rapl rdpid rdpru rdrand rdseed rdt_a rdtscp rep_good sep sha_ni skinit smap smca smep ssbd sse sse2 sse4_1 sse4_2 sse4a ssse3 stibp succor svm svm_lock syscall tce topoext tsc tsc_scale umip v_spec_ctrl v_vmsave_vmload vaes vgif vmcb_clean vme vmmcall vpclmulqdq wbnoinvd wdt xgetbv1 xsave xsavec xsaveerptr xsaveopt xsaves"
    },
    {"Vulnerabilities": ""},
    {"status": "Not affected", "Type": "itlb_multihit"},
    {"status": "Not affected", "Type": "l1tf"},
    {"Type": "mds", "status": "Not affected"},
    {"status": "Not affected", "Type": "meltdown"},
    {
      "Type": "spec_store_bypass",
      "mitigation": "Speculative Store Bypass disabled via prctl and seccomp"
    },
    {
      "Type": "spectre_v1",
      "mitigation": "usercopy/swapgs barriers and __user pointer sanitization"
    },
    {
      "Type": "spectre_v2",
      "mitigation":
          "Retpolines, IBPB: conditional, IBRS_FW, STIBP: always-on, RSB filling"
    },
    {"status": "Not affected", "Type": "srbds"},
    {"status": "Not affected", "Type": "tsx_async_abort"}
  ]
};

void main() {
  group('Test parsing CPU information from inxi report JSON', () {
    test('Test parsing CPU info from Iris inxi report', () {
      final cpuSummary = CPUSummary.fromReport(irisReport);
    });
  });
}
