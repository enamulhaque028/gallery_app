import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../album/domain/album.dart';
import '../data/photo_gallery_repository.dart';

part 'photo_gallery_bloc.freezed.dart';
part 'photo_gallery_event.dart';
part 'photo_gallery_state.dart';

class PhotoGalleryBloc extends Bloc<PhotoGalleryEvent, PhotoGalleryState> {
  final PhotoGalleryRepository photoGalleryRepository;

  PhotoGalleryBloc({required this.photoGalleryRepository})
      : super(const PhotoGalleryState(
          isLoadingAlbums: true,
          albums: [],
          albumThumbnailByte: [],
        )) {
    on<GetAlbumListEvent>(
        (event, emit) async => await _mapGetAlbumListEventToState(event, emit));
  }

  //:::::::::::::::::::::::: Get Album List from Gallery :::::::::::::::::::::::
  Future<void> _mapGetAlbumListEventToState(
    GetAlbumListEvent event,
    Emitter<PhotoGalleryState> emit,
  ) async {
    List<Album> albums = await photoGalleryRepository.listAlbums();
    List<Uint8List> albumThumbnailByte = [...state.albumThumbnailByte];
    for (var i = 0; i < albums.length; i++) {
      var elements = await albums[i].getThumbnail(highQuality: true);
      albumThumbnailByte.add(Uint8List.fromList(elements));
    }
    emit(state.copyWith(
      albums: albums,
      albumThumbnailByte: albumThumbnailByte,
      isLoadingAlbums: false,
    ));
  }
}
