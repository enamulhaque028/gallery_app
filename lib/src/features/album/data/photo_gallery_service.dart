import 'package:flutter/services.dart';
import 'package:gallery_app/src/core/utility/log.dart';

class PhotoGalleryService {
  static const MethodChannel _channel = MethodChannel('photo_gallery');

  static listAlbums({
    bool newest = true,
    bool hideIfEmpty = true,
  }) async {
    final json = await _channel.invokeMethod('listAlbums', {
      'mediumType': 'image',
      'hideIfEmpty': hideIfEmpty,
    });
    appPrint(json);
  }
}
