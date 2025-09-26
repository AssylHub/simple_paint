// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// Directory path: assets/fonts/PressStart
  $AssetsFontsPressStartGen get pressStart => const $AssetsFontsPressStartGen();

  /// Directory path: assets/fonts/Roboto
  $AssetsFontsRobotoGen get roboto => const $AssetsFontsRobotoGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bg_image.png
  AssetGenImage get bgImage =>
      const AssetGenImage('assets/images/bg_image.png');

  /// File path: assets/images/pattern.png
  AssetGenImage get pattern => const AssetGenImage('assets/images/pattern.png');

  /// List of all assets
  List<AssetGenImage> get values => [bgImage, pattern];
}

class $AssetsFontsPressStartGen {
  const $AssetsFontsPressStartGen();

  /// File path: assets/fonts/PressStart/PressStart2P-Regular.ttf
  String get pressStart2PRegular =>
      'assets/fonts/PressStart/PressStart2P-Regular.ttf';

  /// List of all assets
  List<String> get values => [pressStart2PRegular];
}

class $AssetsFontsRobotoGen {
  const $AssetsFontsRobotoGen();

  /// File path: assets/fonts/Roboto/Roboto-Black.ttf
  String get robotoBlack => 'assets/fonts/Roboto/Roboto-Black.ttf';

  /// File path: assets/fonts/Roboto/Roboto-Bold.ttf
  String get robotoBold => 'assets/fonts/Roboto/Roboto-Bold.ttf';

  /// File path: assets/fonts/Roboto/Roboto-ExtraBold.ttf
  String get robotoExtraBold => 'assets/fonts/Roboto/Roboto-ExtraBold.ttf';

  /// File path: assets/fonts/Roboto/Roboto-ExtraLight.ttf
  String get robotoExtraLight => 'assets/fonts/Roboto/Roboto-ExtraLight.ttf';

  /// File path: assets/fonts/Roboto/Roboto-Light.ttf
  String get robotoLight => 'assets/fonts/Roboto/Roboto-Light.ttf';

  /// File path: assets/fonts/Roboto/Roboto-Medium.ttf
  String get robotoMedium => 'assets/fonts/Roboto/Roboto-Medium.ttf';

  /// File path: assets/fonts/Roboto/Roboto-Regular.ttf
  String get robotoRegular => 'assets/fonts/Roboto/Roboto-Regular.ttf';

  /// File path: assets/fonts/Roboto/Roboto-SemiBold.ttf
  String get robotoSemiBold => 'assets/fonts/Roboto/Roboto-SemiBold.ttf';

  /// File path: assets/fonts/Roboto/Roboto-Thin.ttf
  String get robotoThin => 'assets/fonts/Roboto/Roboto-Thin.ttf';

  /// List of all assets
  List<String> get values => [
        robotoBlack,
        robotoBold,
        robotoExtraBold,
        robotoExtraLight,
        robotoLight,
        robotoMedium,
        robotoRegular,
        robotoSemiBold,
        robotoThin
      ];
}

class Assets {
  const Assets._();

  static const String aEnv = '.env';
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();

  /// List of all assets
  static List<String> get values => [aEnv];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
