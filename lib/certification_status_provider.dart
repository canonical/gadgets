import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';

import 'package:unicons/unicons.dart';

enum CertificationStatus {
  passed,
  unknown,
  failed;

  String get testDescription {
    switch (this) {
      case passed:
        return "Compatibility confirmed";

      case unknown:
        return "Compatibility unknown";

      case failed:
        return "Confirmed not compatible";
    }
  }

  String get testDetail {
    switch (this) {
      case passed:
        return "All tests passed.";

      case unknown:
        return "Compatibility not tested.";

      case failed:
        return "At least one required test failed.";
    }
  }

  Color color({required ThemeData theme}) {
    switch (this) {
      case CertificationStatus.passed:
        return Colors.green.shade300;

      case CertificationStatus.unknown:
        return theme.brightness == Brightness.light
            ? Colors.grey.shade300
            : Colors.grey.shade800;

      case CertificationStatus.failed:
        return Colors.red.shade400;
    }
  }

  Icon icon({required ThemeData theme}) {
    switch (this) {
      case CertificationStatus.passed:
        return Icon(UniconsLine.check_circle, color: color(theme: theme));

      case CertificationStatus.unknown:
        return Icon(UniconsLine.question_circle, color: color(theme: theme));

      case CertificationStatus.failed:
        return Icon(UniconsLine.exclamation_circle, color: color(theme: theme));
    }
  }
}

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
