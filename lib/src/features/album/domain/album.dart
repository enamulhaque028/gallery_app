import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/photo_gallery_service.dart';

part 'album.freezed.dart';

@freezed
class Album with _$Album {
  const factory Album({
    required String id,
    @Default(false) bool newest,
    String? name,
    @Default(0) int count,
  }) = _Album;

  const Album._();

  bool get isAllAlbum => id == "__ALL__";

  factory Album.fromJson(dynamic json, bool newest) {
    return Album(
      id: json['id'],
      name: json['name'],
      count: json['count'] ?? 0,
      newest: newest,
    );
  }

  Future<List<int>> getThumbnail({
    int? width,
    int? height,
    bool? highQuality = false,
  }) {
    return PhotoGalleryService.getAlbumThumbnail(
      albumId: id,
      width: width,
      height: height,
      highQuality: highQuality,
    );
  }
}
