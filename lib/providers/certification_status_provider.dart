import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:flutter/material.dart';

import 'package:unicons/unicons.dart';
import 'package:device_tree_lib/device_tree_lib.dart';

extension Presentation on CertificationStatus {
  Color color({required ThemeData theme}) {
    switch (this) {
      case CertificationStatus.passed:
        return Colors.green.shade300;

      case CertificationStatus.passedWithWarnings:
        return theme.brightness == Brightness.light
            ? Colors.yellow.shade800
            : Colors.yellow.shade300;

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
      case CertificationStatus.passedWithWarnings:
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

      case CertificationStatus.passedWithWarnings:
        return Icon(UniconsLine.exclamation_triangle,
            color: color(theme: theme));

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
        .add("USB", CertificationStatus.passedWithWarnings)
        .add("Bluetooth", CertificationStatus.passed)
        .add("Chicony Integrated Camera", CertificationStatus.passed)
        .add("Foxconn / Hon Hai Wireless_Device", CertificationStatus.passed)
        .add("Hi-speed hub with single TT", CertificationStatus.passed)
        .add("Super-speed hub", CertificationStatus.unknown)
        .add("PARALLELS FaceTime HD Camera",
            CertificationStatus.passedWithWarnings)
        .cast());

final nodeCertificationStatusProvider =
    StateProvider.family<CertificationStatus, String>((ref, id) =>
        ref.watch(certificationStatusProvider)[id] ??
        CertificationStatus.unknown);
