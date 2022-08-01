/*
 * Copyright (C) 2022 Canonical Ltd
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

import 'package:freezed_annotation/freezed_annotation.dart';

part 'attachment_result.freezed.dart';
part 'attachment_result.g.dart';

@freezed
class AttachmentResult with _$AttachmentResult {
  factory AttachmentResult({
    required String id,
    @JsonKey(name: 'full_id') required String fullId,
    required String name,
    @JsonKey(name: 'certification_status') required String certificationStatus,
    required String category,
    @JsonKey(name: 'category_id') String? categoryId,
    required String status,
    required String outcome,
    String? comments,
    @JsonKey(name: 'io_log') required String ioLog,
    required double duration,
  }) = _AttachmentResult;

  factory AttachmentResult.fromJson(Map<String, dynamic> json) =>
      _$AttachmentResultFromJson(json);
}
