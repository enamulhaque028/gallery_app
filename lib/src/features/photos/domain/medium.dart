import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../shared/data/photo_gallery_repository.dart';

part 'medium.freezed.dart';

@freezed
class Medium with _$Medium {
  const factory Medium({
    required String id,
    String? filename,
    String? title,
    int? width,
    int? height,
    int? size,
    int? orientation,
    String? mimeType,
    required int duration,
    DateTime? creationDate,
    DateTime? modifiedDate,
  }) = _Medium;

  const Medium._();

  factory Medium.fromJson(dynamic json) {
    return Medium(
      id: json["id"],
      filename: json["filename"],
      title: json["title"],
      width: json["width"],
      height: json["height"],
      size: json["size"],
      orientation: json["orientation"],
      mimeType: json["mimeType"],
      duration: json['duration'] ?? 0,
      creationDate: json['creationDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(json['creationDate'])
          : null,
      modifiedDate: json['modifiedDate'] != null
          ? DateTime.fromMillisecondsSinceEpoch(json['modifiedDate'])
          : null,
    );
  }

  /// Get the original file.
  Future<File> getFile() {
    return PhotoGalleryRepository().getFile(
      mediumId: id,
    );
  }
}
