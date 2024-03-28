// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_gallery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PhotoGalleryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAlbumList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAlbumList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAlbumList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAlbumListEvent value) getAlbumList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAlbumListEvent value)? getAlbumList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAlbumListEvent value)? getAlbumList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoGalleryEventCopyWith<$Res> {
  factory $PhotoGalleryEventCopyWith(
          PhotoGalleryEvent value, $Res Function(PhotoGalleryEvent) then) =
      _$PhotoGalleryEventCopyWithImpl<$Res, PhotoGalleryEvent>;
}

/// @nodoc
class _$PhotoGalleryEventCopyWithImpl<$Res, $Val extends PhotoGalleryEvent>
    implements $PhotoGalleryEventCopyWith<$Res> {
  _$PhotoGalleryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAlbumListEventImplCopyWith<$Res> {
  factory _$$GetAlbumListEventImplCopyWith(_$GetAlbumListEventImpl value,
          $Res Function(_$GetAlbumListEventImpl) then) =
      __$$GetAlbumListEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAlbumListEventImplCopyWithImpl<$Res>
    extends _$PhotoGalleryEventCopyWithImpl<$Res, _$GetAlbumListEventImpl>
    implements _$$GetAlbumListEventImplCopyWith<$Res> {
  __$$GetAlbumListEventImplCopyWithImpl(_$GetAlbumListEventImpl _value,
      $Res Function(_$GetAlbumListEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAlbumListEventImpl implements GetAlbumListEvent {
  const _$GetAlbumListEventImpl();

  @override
  String toString() {
    return 'PhotoGalleryEvent.getAlbumList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAlbumListEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAlbumList,
  }) {
    return getAlbumList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAlbumList,
  }) {
    return getAlbumList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAlbumList,
    required TResult orElse(),
  }) {
    if (getAlbumList != null) {
      return getAlbumList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAlbumListEvent value) getAlbumList,
  }) {
    return getAlbumList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAlbumListEvent value)? getAlbumList,
  }) {
    return getAlbumList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAlbumListEvent value)? getAlbumList,
    required TResult orElse(),
  }) {
    if (getAlbumList != null) {
      return getAlbumList(this);
    }
    return orElse();
  }
}

abstract class GetAlbumListEvent implements PhotoGalleryEvent {
  const factory GetAlbumListEvent() = _$GetAlbumListEventImpl;
}

/// @nodoc
mixin _$PhotoGalleryState {
  bool get isLoadingAlbums => throw _privateConstructorUsedError;
  List<Album> get albums => throw _privateConstructorUsedError;
  List<Uint8List> get albumThumbnailByte => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoGalleryStateCopyWith<PhotoGalleryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoGalleryStateCopyWith<$Res> {
  factory $PhotoGalleryStateCopyWith(
          PhotoGalleryState value, $Res Function(PhotoGalleryState) then) =
      _$PhotoGalleryStateCopyWithImpl<$Res, PhotoGalleryState>;
  @useResult
  $Res call(
      {bool isLoadingAlbums,
      List<Album> albums,
      List<Uint8List> albumThumbnailByte});
}

/// @nodoc
class _$PhotoGalleryStateCopyWithImpl<$Res, $Val extends PhotoGalleryState>
    implements $PhotoGalleryStateCopyWith<$Res> {
  _$PhotoGalleryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingAlbums = null,
    Object? albums = null,
    Object? albumThumbnailByte = null,
  }) {
    return _then(_value.copyWith(
      isLoadingAlbums: null == isLoadingAlbums
          ? _value.isLoadingAlbums
          : isLoadingAlbums // ignore: cast_nullable_to_non_nullable
              as bool,
      albums: null == albums
          ? _value.albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<Album>,
      albumThumbnailByte: null == albumThumbnailByte
          ? _value.albumThumbnailByte
          : albumThumbnailByte // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhotoGalleryStateImplCopyWith<$Res>
    implements $PhotoGalleryStateCopyWith<$Res> {
  factory _$$PhotoGalleryStateImplCopyWith(_$PhotoGalleryStateImpl value,
          $Res Function(_$PhotoGalleryStateImpl) then) =
      __$$PhotoGalleryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoadingAlbums,
      List<Album> albums,
      List<Uint8List> albumThumbnailByte});
}

/// @nodoc
class __$$PhotoGalleryStateImplCopyWithImpl<$Res>
    extends _$PhotoGalleryStateCopyWithImpl<$Res, _$PhotoGalleryStateImpl>
    implements _$$PhotoGalleryStateImplCopyWith<$Res> {
  __$$PhotoGalleryStateImplCopyWithImpl(_$PhotoGalleryStateImpl _value,
      $Res Function(_$PhotoGalleryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingAlbums = null,
    Object? albums = null,
    Object? albumThumbnailByte = null,
  }) {
    return _then(_$PhotoGalleryStateImpl(
      isLoadingAlbums: null == isLoadingAlbums
          ? _value.isLoadingAlbums
          : isLoadingAlbums // ignore: cast_nullable_to_non_nullable
              as bool,
      albums: null == albums
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<Album>,
      albumThumbnailByte: null == albumThumbnailByte
          ? _value._albumThumbnailByte
          : albumThumbnailByte // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
    ));
  }
}

/// @nodoc

class _$PhotoGalleryStateImpl implements _PhotoGalleryState {
  const _$PhotoGalleryStateImpl(
      {required this.isLoadingAlbums,
      required final List<Album> albums,
      required final List<Uint8List> albumThumbnailByte})
      : _albums = albums,
        _albumThumbnailByte = albumThumbnailByte;

  @override
  final bool isLoadingAlbums;
  final List<Album> _albums;
  @override
  List<Album> get albums {
    if (_albums is EqualUnmodifiableListView) return _albums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  final List<Uint8List> _albumThumbnailByte;
  @override
  List<Uint8List> get albumThumbnailByte {
    if (_albumThumbnailByte is EqualUnmodifiableListView)
      return _albumThumbnailByte;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albumThumbnailByte);
  }

  @override
  String toString() {
    return 'PhotoGalleryState(isLoadingAlbums: $isLoadingAlbums, albums: $albums, albumThumbnailByte: $albumThumbnailByte)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoGalleryStateImpl &&
            (identical(other.isLoadingAlbums, isLoadingAlbums) ||
                other.isLoadingAlbums == isLoadingAlbums) &&
            const DeepCollectionEquality().equals(other._albums, _albums) &&
            const DeepCollectionEquality()
                .equals(other._albumThumbnailByte, _albumThumbnailByte));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoadingAlbums,
      const DeepCollectionEquality().hash(_albums),
      const DeepCollectionEquality().hash(_albumThumbnailByte));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoGalleryStateImplCopyWith<_$PhotoGalleryStateImpl> get copyWith =>
      __$$PhotoGalleryStateImplCopyWithImpl<_$PhotoGalleryStateImpl>(
          this, _$identity);
}

abstract class _PhotoGalleryState implements PhotoGalleryState {
  const factory _PhotoGalleryState(
          {required final bool isLoadingAlbums,
          required final List<Album> albums,
          required final List<Uint8List> albumThumbnailByte}) =
      _$PhotoGalleryStateImpl;

  @override
  bool get isLoadingAlbums;
  @override
  List<Album> get albums;
  @override
  List<Uint8List> get albumThumbnailByte;
  @override
  @JsonKey(ignore: true)
  _$$PhotoGalleryStateImplCopyWith<_$PhotoGalleryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
