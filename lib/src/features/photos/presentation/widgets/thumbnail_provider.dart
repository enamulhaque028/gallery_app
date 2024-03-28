import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gallery_app/src/features/shared/data/photo_gallery_repository.dart';

class ThumbnailProvider extends ImageProvider<ThumbnailProvider> {
  const ThumbnailProvider({
    required this.mediumId,
    this.height,
    this.width,
    this.highQuality = false,
  });

  final String mediumId;

  final int? height;

  final int? width;

  final bool? highQuality;

  @override
  ImageStreamCompleter loadImage(key, decode) {
    return MultiFrameImageStreamCompleter(
      codec: _loadAsync(key, decode),
      scale: 1.0,
      informationCollector: () sync* {
        yield ErrorDescription('Id: $mediumId');
      },
    );
  }

  Future<ui.Codec> _loadAsync(
      ThumbnailProvider key, ImageDecoderCallback decode) async {
    assert(key == this);
    late ui.ImmutableBuffer buffer;
    try {
      final data = await PhotoGalleryRepository().getThumbnail(
        mediumId: mediumId,
        height: height,
        width: width,
        highQuality: highQuality,
      );
      buffer = await ui.ImmutableBuffer.fromUint8List(Uint8List.fromList(data));
    } catch (e) {
      buffer = await ui.ImmutableBuffer.fromAsset(
          "packages/photo_gallery/images/grey.bmp");
    }
    return decode(buffer);
  }

  @override
  Future<ThumbnailProvider> obtainKey(ImageConfiguration configuration) {
    return SynchronousFuture<ThumbnailProvider>(this);
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    final typedOther = other as ThumbnailProvider;
    return mediumId == typedOther.mediumId;
  }

  @override
  int get hashCode => mediumId.hashCode;

  @override
  String toString() => '$runtimeType("$mediumId")';
}
