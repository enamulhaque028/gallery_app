import '../../album/domain/album.dart';
import 'photo_gallery_service.dart';

class PhotoGalleryRepository {
  final PhotoGalleryService _photoGalleryService = PhotoGalleryService.instance;

  // Get all available gallery albums from gallery
  Future<List<Album>> listAlbums({
    bool newest = true,
    bool hideIfEmpty = true,
  }) async {
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
  }) async {
    return _photoGalleryService.getAlbumThumbnail(
      albumId: albumId,
      newest: newest,
      width: width,
      height: height,
      highQuality: highQuality,
    );
  }
}
