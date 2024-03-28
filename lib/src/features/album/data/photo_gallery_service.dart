import 'package:flutter/services.dart';

import '../domain/album.dart';

class PhotoGalleryService {
  static const MethodChannel _channel = MethodChannel('photo_gallery');

  static Future<List<Album>> listAlbums({
    bool newest = true,
    bool hideIfEmpty = true,
  }) async {
    final json = await _channel.invokeMethod('listAlbums', {
      'mediumType': 'image',
      'hideIfEmpty': hideIfEmpty,
    });
    return json.map<Album>((album) => Album.fromJson(album, newest)).toList();
  }

  static Future<List<int>> getAlbumThumbnail({
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
