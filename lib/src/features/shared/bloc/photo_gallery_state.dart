part of 'photo_gallery_bloc.dart';

class PhotoGalleryState extends Equatable {
  const PhotoGalleryState({
    this.isLoadingAlbums = true,
    this.albums = const [],
    this.albumThumbnailByte = const [],
  });

  final bool isLoadingAlbums;
  final List<Album> albums;
  final List<Uint8List> albumThumbnailByte;

  PhotoGalleryState copyWith({
    bool? isLoadingAlbums,
    List<Album>? albums,
    List<Uint8List>? albumThumbnailByte,
  }) {
    return PhotoGalleryState(
      isLoadingAlbums: isLoadingAlbums ?? this.isLoadingAlbums,
      albums: albums ?? this.albums,
      albumThumbnailByte: albumThumbnailByte ?? this.albumThumbnailByte,
    );
  }

  @override
  List<Object?> get props => [
        isLoadingAlbums,
        albums,
        albumThumbnailByte,
      ];
}
