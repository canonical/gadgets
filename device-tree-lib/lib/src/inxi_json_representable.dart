class MethodUnimplementedException extends Exception {
  MethodUnimplementedException();
}

abstract class InxiJSONRepresentable {
  static bool isRepresentation(Map<String, dynamic> map) {
    throw MethodUnimplementedException();
  }
}
