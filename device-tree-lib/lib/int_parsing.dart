class UnexpectedTypeError extends Error {
  final dynamic value;
  Type get valueType {
    return value.runtimeType;
  }

  UnexpectedTypeError(this.value) : super();
}

int? maybeParseInt(dynamic value) {
  if (value == null) {
    return null;
  } else if (value is int) {
    return value;
  } else if (value is String) {
    return int.parse(value);
  }
  throw UnexpectedTypeError(value);
}
