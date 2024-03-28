import 'dart:io';

import 'package:flutter/services.dart';

import '../../album/domain/album.dart';
import '../../photos/domain/media.dart';

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

  /// List all available media in a specific album, support pagination of media
  Future<Media> listMedia({
    required Album album,
    int? skip,
    int? take,
    bool? lightWeight,
  }) async {
    final json = await _channel.invokeMethod('listMedia', {
      'albumId': album.id,
      'mediumType': 'image',
      'newest': album.newest,
      'skip': skip,
      'take': take,
      'lightWeight': lightWeight,
    });
    return Media.fromJson(album, json);
  }

  /// Get medium thumbnail by medium id
  Future<List<int>> getThumbnail({
    required String mediumId,
    int? width,
    int? height,
    bool? highQuality = false,
  }) async {
    final bytes = await _channel.invokeMethod('getThumbnail', {
      'mediumId': mediumId,
      'mediumType': 'image',
      'width': width,
      'height': height,
      'highQuality': highQuality,
    });
    if (bytes == null) throw "Failed to fetch thumbnail of medium $mediumId";
    return List<int>.from(bytes);
  }

  /// get medium file by medium id
  Future<File> getFile({
    required String mediumId,
    String? mimeType,
  }) async {
    final path = await _channel.invokeMethod('getFile', {
      'mediumId': mediumId,
      'mediumType': 'image',
      'mimeType': mimeType,
    }) as String?;
    if (path == null) throw "Cannot get file $mediumId with type $mimeType";
    return File(path);
  }
}
