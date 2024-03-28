part of 'photo_gallery_bloc.dart';

@freezed
abstract class PhotoGalleryEvent with _$PhotoGalleryEvent {
  const factory PhotoGalleryEvent.getAlbumList() = GetAlbumListEvent;
}
