class ImageAssets {
  const ImageAssets._();

  static String get imgLogo => 'img_logo'.png;
}

extension on String {
  String get png => 'assets/images/$this.png';
}
