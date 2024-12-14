/// Example 1 of enum with image path
enum ImageEnum {
  /// car image name
  car,
}

/// Image Enum Extension
extension ImageEnumExtension on ImageEnum {
  /// image path
  String get path {
    switch (this) {
      case ImageEnum.car:
        return 'assets/images/car.png';
    }
  }
}

/// Example 2 of enum with image path
enum DemoEnum {
  /// car image name
  car('car');

  const DemoEnum(this.value);

  /// image value
  final String value;

  /// image path
  String get pngPath => 'assets/images/$value.png';
}
