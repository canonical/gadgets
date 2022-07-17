class UnexpectedBatteryValue implements Exception {
  Map<String, dynamic> value;
  UnexpectedBatteryValue(this.value);
  String? get message =>
      "Unexpected battery value $value (of type ${value.runtimeType})";
}
