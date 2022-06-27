class Parser {
  static String stringIfNullReplace(dynamic value, String ifNull) {
    if (value is! String) {
      if (value == null) {
        return ifNull;
      }
      return value.toString();
    }
    return value;
  }
}
