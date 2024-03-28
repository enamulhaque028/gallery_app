part of 'photo_gallery_bloc.dart';

@freezed
abstract class PhotoGalleryState with _$PhotoGalleryState {
  const factory PhotoGalleryState({
    required bool isLoadingAlbums,
    required List<Album> albums,
    required List<Uint8List> albumThumbnailByte,
  }) = _PhotoGalleryState;

  factory PhotoGalleryState.initial() => const PhotoGalleryState(
        isLoadingAlbums: true,
        albums: [],
        albumThumbnailByte: [],
      );
}
