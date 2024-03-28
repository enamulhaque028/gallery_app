import 'package:freezed_annotation/freezed_annotation.dart';

import '../../album/domain/album.dart';
import 'medium.dart';

part 'media.freezed.dart';

@freezed
class Media with _$Media {
  const factory Media({
    required Album album,
    required int start,
    required List<Medium> items,
    bool? lightWeight,
  }) = _Media;

  const Media._();

  factory Media.fromJson(Album album, dynamic json, {bool? lightWeight}) {
    return Media(
      album: album,
      start: json['start'] ?? 0,
      items: (json['items'] as List).map((x) => Medium.fromJson(x)).toList(),
      lightWeight: lightWeight,
    );
  }
}
