part of 'photo_gallery_bloc.dart';

abstract class PhotoGalleryEvent extends Equatable {
  const PhotoGalleryEvent();
}

class GetAlbumListEvent extends PhotoGalleryEvent {
  const GetAlbumListEvent();
  @override
  List<Object?> get props => [];
}
