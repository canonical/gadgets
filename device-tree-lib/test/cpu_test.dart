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

const athenaReport = {
  "CPU": [
    {
      "model-id": "1",
      "model": "AMD Ryzen Threadripper 1950X",
      "socket": "SP3r2",
      "bits": 64,
      "Info": "",
      "arch": "Zen",
      "type": "MT MCP MCM",
      "stepping": "1",
      "microcode": "0x8001137",
      "family": "0x17 (23)"
    },
    {
      "Topology": "",
      "desc": "16x512 KiB",
      "tpc": 2,
      "cache": "",
      "smt": "enabled",
      "L1": "1.5 MiB",
      "L3": "32 MiB",
      "threads": 32,
      "cores": 16,
      "dies": 2,
      "cpus": "1",
      "L2": "8 MiB"
    },
    {
      "3": 3400,
      "min/max": "2200/3400",
      "governor": "schedutil",
      "12": 2200,
      "10": 2200,
      "5": 2200,
      "18": 2200,
      "scaling": "",
      "4": 2200,
      "17": 2200,
      "base/boost": "3400/4200",
      "2": 2200,
      "19": 2200,
      "bogomips": 217158,
      "14": 2200,
      "11": 2200,
      "26": 2200,
      "ext-clock": "100 MHz",
      "high": 3400,
      "13": 2200,
      "9": 2200,
      "25": 2200,
      "7": 2200,
      "27": 2200,
      "28": 2200,
      "23": 2200,
      "boost": "enabled",
      "volts": "1.1 V",
      "cores": "",
      "21": 2200,
      "24": 2200,
      "30": 2200,
      "32": 2200,
      "15": 2200,
      "1": 2200,
      "8": 2200,
      "Speed (MHz)": "",
      "29": 2200,
      "16": 2200,
      "driver": "acpi-cpufreq",
      "6": 2200,
      "avg": 2237,
      "31": 2200,
      "20": 2200,
      "22": 2200
    },
    {
      "Flags":
          "3dnowprefetch abm adx aes amd_dcm aperfmperf apic arat avic avx avx2 bmi1 bmi2 bpext clflush clflushopt clzero cmov cmp_legacy constant_tsc cpb cpuid cr8_legacy cx16 cx8 de decodeassists extapic extd_apicid f16c flushbyasid fma fpu fsgsbase fxsr fxsr_opt ht hw_pstate ibpb irperf lahf_lm lbrv lm mca mce misalignsse mmx mmxext monitor movbe msr mtrr mwaitx nonstop_tsc nopl npt nrip_save nx osvw overflow_recov pae pat pausefilter pclmulqdq pdpe1gb perfctr_core perfctr_llc perfctr_nb pfthreshold pge pni popcnt pse pse36 rapl rdrand rdseed rdtscp rep_good sep sev sha_ni skinit smap smca sme smep ssbd sse sse2 sse4_1 sse4_2 sse4a ssse3 succor svm svm_lock syscall tce topoext tsc tsc_scale v_vmsave_vmload vgif vmcb_clean vme vmmcall wdt xgetbv1 xsave xsavec xsaveerptr xsaveopt xsaves"
    },
    {"Vulnerabilities": ""},
    {"status": "Not affected", "Type": "itlb_multihit"},
    {"Type": "l1tf", "status": "Not affected"},
    {"Type": "mds", "status": "Not affected"},
    {"Type": "meltdown", "status": "Not affected"},
    {
      "mitigation": "Speculative Store Bypass disabled via prctl and seccomp",
      "Type": "spec_store_bypass"
    },
    {
      "Type": "spectre_v1",
      "mitigation": "usercopy/swapgs barriers and __user pointer sanitization"
    },
    {
      "Type": "spectre_v2",
      "mitigation":
          "Retpolines, IBPB: conditional, STIBP: disabled, RSB filling"
    },
    {"status": "Not affected", "Type": "srbds"},
    {"Type": "tsx_async_abort", "status": "Not affected"}
  ]
};

void main() {
  group('Test parsing CPU information from inxi report JSON', () {
    test('Test parsing CPU info from Iris inxi report', () {
      final cpuSummary = CPUSummary.fromReport(irisReport);
      expect(cpuSummary.cpu.architecture, 'Zen 3');
      expect(cpuSummary.cpu.bits, 64);
      expect(cpuSummary.cpu.family, '0x19 (25)');
      expect(cpuSummary.cpu.microcode, '0xA50000B');
      expect(cpuSummary.cpu.model, 'AMD Ryzen 9 5900HX with Radeon Graphics');
      expect(cpuSummary.cpu.modelID, '0x50 (80)');
      expect(cpuSummary.cpu.socket, 'FP6');
      expect(cpuSummary.cpu.stepping, 0);
      expect(cpuSummary.cpu.type, 'MT MCP');

      expect(cpuSummary.coreInfo?.cache, '');
      expect(cpuSummary.coreInfo?.cores, 8);
      expect(cpuSummary.coreInfo?.cpus, 1);
      expect(cpuSummary.coreInfo?.description, 'd-8x32 KiB; i-8x32 KiB');
      expect(cpuSummary.coreInfo?.l1, '512 KiB');
      expect(cpuSummary.coreInfo?.l2, '4 MiB');
      expect(cpuSummary.coreInfo?.l3, '16 MiB');
      expect(cpuSummary.coreInfo?.smt, 'enabled');
      expect(cpuSummary.coreInfo?.threads, 16);
      expect(cpuSummary.coreInfo?.tpc, 2);

      expect(cpuSummary.coreFrequencyInfo?.avg, 1200);
      expect(cpuSummary.coreFrequencyInfo?.baseBoost, '3300/4650');
      expect(cpuSummary.coreFrequencyInfo?.bogomips, 105403);
      expect(cpuSummary.coreFrequencyInfo?.boost, 'enabled');
      expect(cpuSummary.coreFrequencyInfo?.coreFrequencies, [
        1200,
        1200,
        1200,
        1200,
        1200,
        1200,
        1200,
        1200,
        1200,
        1200,
        1200,
        1200,
        1200,
        1200,
        1200,
        1200
      ]);
      expect(cpuSummary.coreFrequencyInfo.driver, 'acpi-cpufreq');
      expect(cpuSummary.coreFrequencyInfo.extClock, '100 MHz');
      expect(cpuSummary.coreFrequencyInfo.governor, 'schedutil');
      expect(cpuSummary.coreFrequencyInfo.minMax, '1200/4679');
      expect(cpuSummary.coreFrequencyInfo.volts, '1.2 V');

      expect(
          cpuSummary.flags.flags,
          """
3dnowprefetch abm adx aes aperfmperf 
apic arat avic avx avx2 bmi1 bmi2 bpext 
cat_l3 cdp_l3 clflush clflushopt clwb 
clzero cmov cmp_legacy constant_tsc cpb 
cpuid cqm cqm_llc cqm_mbm_local cqm_mbm_total 
cqm_occup_llc cr8_legacy cx16 cx8 
de decodeassists erms extapic extd_apicid 
f16c flushbyasid fma fpu fsgsbase fsrm fxsr 
fxsr_opt ht hw_pstate ibpb ibrs ibs invpcid 
irperf lahf_lm lbrv lm mba mca mce misalignsse 
mmx mmxext monitor movbe msr mtrr mwaitx nonstop_tsc 
nopl npt nrip_save nx ospke osvw overflow_recov 
pae pat pausefilter pclmulqdq pdpe1gb perfctr_core 
perfctr_llc perfctr_nb pfthreshold pge pku pni popcnt 
pse pse36 rapl rdpid rdpru rdrand rdseed rdt_a rdtscp 
rep_good sep sha_ni skinit smap smca smep ssbd sse sse2 sse4_1 
sse4_2 sse4a ssse3 stibp succor svm svm_lock syscall tce 
topoext tsc tsc_scale umip v_spec_ctrl v_vmsave_vmload vaes 
vgif vmcb_clean vme vmmcall vpclmulqdq wbnoinvd wdt xgetbv1 
xsave xsavec xsaveerptr xsaveopt xsaves"""
              .replaceAll('\n', ''));
    });

    test('Test parsing CPU info from Athena inxi report', () {
      // TODO: Add assertions also for the Athena report.
      final cpuSummary = CPUSummary.fromReport(athenaReport);
      expect(cpuSummary.coreInfo.l1, '1.5 MiB');
    });
  });
}
