class ImageAsset {
  static get(String fileName) => _imagesPath + fileName;

  static const String _imagesPath = "assets/images/";
  static const String _svgPath = "assets/svg_icons/";
  static const String _lottiePath = "assets/lottie/";

  // Images path
  static const String product = _imagesPath + "product.jpg";

  // Lottie path
  static const String almostThere = _lottiePath + 'almost_there.json';
  static const String almostThereSelected = _lottiePath + 'selected.json';

  @override
  String toString() => "Get Image and Svg Path from ImageAsset";
}
