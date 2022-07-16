import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';

import 'package:unicons/unicons.dart';

enum CertificationStatus {
  passed,
  unknown,
  failed;

  String get description {
    switch (this) {
      case passed:
        return "Ubuntu Certified for 22.04 LTS (Jammy Jellyfish)";

      case unknown:
        return "This device is not certified";

      case failed:
        return "Device is not fully Ubuntu compatible";
    }
  }

  String get detail {
    switch (this) {
      case passed:
        return "Device passes all required certification tests.";

      case unknown:
        return "Device is not a part of the certification program.";

      case failed:
        return "Your device has components with known compatibility issues.";
    }
  }

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

  Widget headlineIcon({required ThemeData theme}) {
    switch (this) {
      case CertificationStatus.passed:
        return const Image(
          image: AssetImage('images/ubuntu_certified_hardware.png'),
          width: 54,
          color: null,
          fit: BoxFit.scaleDown,
          alignment: Alignment.center,
          isAntiAlias: true,
        );

      case CertificationStatus.unknown:
        return Icon(UniconsLine.question, color: color(theme: theme));

      case CertificationStatus.failed:
        return Icon(UniconsLine.exclamation_octagon,
            color: color(theme: theme));
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
        .add("USB", CertificationStatus.passed)
        .add("Bluetooth", CertificationStatus.passed)
        .add("Chicony Integrated Camera", CertificationStatus.passed)
        .add("Foxconn / Hon Hai Wireless_Device", CertificationStatus.passed)
        .add("Hi-speed hub with single TT", CertificationStatus.passed)
        .add("Super-speed hub", CertificationStatus.unknown)
        .cast());

final nodeCertificationStatusProvider =
    StateProvider.family<CertificationStatus, String>((ref, id) =>
        ref.watch(certificationStatusProvider)[id] ??
        CertificationStatus.unknown);
