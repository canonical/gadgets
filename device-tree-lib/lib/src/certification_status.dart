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
}
