import 'package:freezed_annotation/freezed_annotation.dart';

part 'memory.freezed.dart';
part 'memory.g.dart';

@freezed
class Memory with _$Memory {
  factory Memory({
    int? swap,
    int? total,
  }) = _Memory;

  factory Memory.fromJson(Map<String, dynamic> json) => _$MemoryFromJson(json);
}
