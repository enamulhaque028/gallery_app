class ImageAssets {
  const ImageAssets._();

  static String get imgCatalog => 'img_logo'.png;
}

extension on String {
  String get png => 'assets/images/$this.png';
}
