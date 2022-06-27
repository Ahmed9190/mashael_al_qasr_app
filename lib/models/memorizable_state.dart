import 'dart:convert';

class MemorizableState<T> {
  T? pervious;
  T? current;
  MemorizableState({
    this.pervious,
    this.current,
  });

  resetState() {
    pervious = null;
    current = null;
  }

  assignCurrentToPervious() {
    pervious = current;
  }

  assignPerviousToCurrent() {
    current = pervious;
  }

  @override
  String toString() =>
      'MemorizableState(pervious: $pervious, current: $current)';

  Map<String, dynamic> toMap() {
    return {
      'pervious': pervious,
      'current': current,
    };
  }

  factory MemorizableState.fromMap(Map<String, dynamic> map) {
    return MemorizableState<T>(
      pervious: map['pervious'],
      current: map['current'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MemorizableState.fromJson(String source) =>
      MemorizableState.fromMap(json.decode(source));
}
