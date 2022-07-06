import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';

enum CertificationStatus { passed, unknown, failed }

StateProvider<IMap<String, CertificationStatus>> certificationStatusProvider =
    StateProvider((_) => IMap()
        .add("System Info", CertificationStatus.passed)
        .add("Storage", CertificationStatus.passed)
        .add("System Information", CertificationStatus.passed)
        .add("CPU", CertificationStatus.passed)
        .add("Graphics", CertificationStatus.passed)
        .add("Power Management", CertificationStatus.passed)
        .add("Audio", CertificationStatus.passed)
        .add("USB", CertificationStatus.failed)
        .add("Bluetooth", CertificationStatus.passed)
        .add("Chicony Integrated Camera", CertificationStatus.failed)
        .add("Foxconn / Hon Hai Wireless_Device", CertificationStatus.passed)
        .add("Hi-speed hub with single TT", CertificationStatus.passed)
        .add("Super-speed hub", CertificationStatus.unknown)
        .cast());

final nodeCertificationStatusProvider =
    StateProvider.family<CertificationStatus, String>((ref, id) =>
        ref.watch(certificationStatusProvider)[id] ??
        CertificationStatus.unknown);

Color color(CertificationStatus status) {
  switch (status) {
    case CertificationStatus.passed:
      return Colors.green.shade300;

    case CertificationStatus.unknown:
      return Colors.grey.shade800;

    case CertificationStatus.failed:
      return Colors.red.shade400;
  }
}
