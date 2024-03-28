import 'dart:io';

import '../../album/domain/album.dart';
import '../../photos/domain/media.dart';
import 'photo_gallery_service.dart';

class PhotoGalleryRepository {
  final PhotoGalleryService _photoGalleryService = PhotoGalleryService.instance;

  // Get all available gallery albums from gallery
  Future<List<Album>> listAlbums({
    bool newest = true,
    bool hideIfEmpty = true,
  }) {
    return _photoGalleryService.listAlbums(
      newest: newest,
      hideIfEmpty: hideIfEmpty,
    );
  }

  // Get album thumbnail by album id
  Future<List<int>> getAlbumThumbnail({
    required String albumId,
    bool newest = true,
    int? width,
    int? height,
    bool? highQuality = false,
  }) {
    return _photoGalleryService.getAlbumThumbnail(
      albumId: albumId,
      newest: newest,
      width: width,
      height: height,
      highQuality: highQuality,
    );
  }

  // Get List all available media in a specific album
  Future<Media> listMedia({
    required Album album,
    int? skip,
    int? take,
    bool? lightWeight,
  }) {
    return _photoGalleryService.listMedia(
      album: album,
      skip: skip,
      take: take,
      lightWeight: lightWeight,
    );
  }

  // Get medium thumbnail by medium id
  Future<List<int>> getThumbnail({
    required String mediumId,
    int? width,
    int? height,
    bool? highQuality = false,
  }) {
    return _photoGalleryService.getThumbnail(
      mediumId: mediumId,
      width: width,
      height: height,
      highQuality: highQuality,
    );
  }

  // get medium file by medium id
  Future<File> getFile({
    required String mediumId,
    String? mimeType,
  }) {
    return _photoGalleryService.getFile(
      mediumId: mediumId,
      mimeType: mimeType,
    );
  }
}
