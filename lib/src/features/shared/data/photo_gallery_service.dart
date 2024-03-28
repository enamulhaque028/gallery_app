import 'package:flutter/services.dart';

import '../../album/domain/album.dart';

class PhotoGalleryService {
  PhotoGalleryService._();
  static PhotoGalleryService instance = PhotoGalleryService._();

  final MethodChannel _channel = const MethodChannel('photo_gallery');

  /// List all available gallery albums and counts number of items of [MediumType].
  /// [hideIfEmpty] whether to hide empty albums, only available on iOS
  Future<List<Album>> listAlbums({
    bool newest = true,
    bool hideIfEmpty = true,
  }) async {
    final json = await _channel.invokeMethod('listAlbums', {
      'mediumType': 'image',
      'hideIfEmpty': hideIfEmpty,
    });
    return json.map<Album>((album) => Album.fromJson(album, newest)).toList();
  }

  /// Get album thumbnail by album id
  Future<List<int>> getAlbumThumbnail({
    required String albumId,
    bool newest = true,
    int? width,
    int? height,
    bool? highQuality = false,
  }) async {
    final bytes = await _channel.invokeMethod('getAlbumThumbnail', {
      'albumId': albumId,
      'mediumType': 'image',
      'newest': newest,
      'width': width,
      'height': height,
      'highQuality': highQuality,
    });
    if (bytes == null) throw "Failed to fetch thumbnail of album $albumId";
    return List<int>.from(bytes);
  }
}
