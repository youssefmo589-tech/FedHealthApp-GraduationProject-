// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Inter_18pt-Light.ttf
  String get inter18ptLight => 'assets/fonts/Inter_18pt-Light.ttf';

  /// File path: assets/fonts/Inter_18pt-Medium.ttf
  String get inter18ptMedium => 'assets/fonts/Inter_18pt-Medium.ttf';

  /// File path: assets/fonts/Inter_18pt-Regular.ttf
  String get inter18ptRegular => 'assets/fonts/Inter_18pt-Regular.ttf';

  /// File path: assets/fonts/Inter_18pt-SemiBold.ttf
  String get inter18ptSemiBold => 'assets/fonts/Inter_18pt-SemiBold.ttf';

  /// List of all assets
  List<String> get values => [
    inter18ptLight,
    inter18ptMedium,
    inter18ptRegular,
    inter18ptSemiBold,
  ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/FedHealth mark (1).svg
  SvgGenImage get fedHealthMark1 =>
      const SvgGenImage('assets/icons/FedHealth mark (1).svg');

  /// File path: assets/icons/FedHealth mark.svg
  SvgGenImage get fedHealthMark =>
      const SvgGenImage('assets/icons/FedHealth mark.svg');

  /// File path: assets/icons/activity.svg
  SvgGenImage get activity => const SvgGenImage('assets/icons/activity.svg');

  /// File path: assets/icons/assesment.svg
  SvgGenImage get assesment => const SvgGenImage('assets/icons/assesment.svg');

  /// File path: assets/icons/chart-no-axes-combined.svg
  SvgGenImage get chartNoAxesCombined =>
      const SvgGenImage('assets/icons/chart-no-axes-combined.svg');

  /// File path: assets/icons/circle-check.svg
  SvgGenImage get circleCheck =>
      const SvgGenImage('assets/icons/circle-check.svg');

  /// File path: assets/icons/flask-conical.svg
  SvgGenImage get flaskConical =>
      const SvgGenImage('assets/icons/flask-conical.svg');

  /// File path: assets/icons/globe.svg
  SvgGenImage get globe => const SvgGenImage('assets/icons/globe.svg');

  /// File path: assets/icons/hospital.svg
  SvgGenImage get hospital => const SvgGenImage('assets/icons/hospital.svg');

  /// File path: assets/icons/settings-2.svg
  SvgGenImage get settings2 => const SvgGenImage('assets/icons/settings-2.svg');

  /// File path: assets/icons/sliders-horizontal.svg
  SvgGenImage get slidersHorizontal =>
      const SvgGenImage('assets/icons/sliders-horizontal.svg');

  /// File path: assets/icons/sparkles.svg
  SvgGenImage get sparkles => const SvgGenImage('assets/icons/sparkles.svg');

  /// File path: assets/icons/stethoscope.svg
  SvgGenImage get stethoscope =>
      const SvgGenImage('assets/icons/stethoscope.svg');

  /// File path: assets/icons/user-round.svg
  SvgGenImage get userRound => const SvgGenImage('assets/icons/user-round.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    fedHealthMark1,
    fedHealthMark,
    activity,
    assesment,
    chartNoAxesCombined,
    circleCheck,
    flaskConical,
    globe,
    hospital,
    settings2,
    slidersHorizontal,
    sparkles,
    stethoscope,
    userRound,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/FedHealth mark.png
  AssetGenImage get fedHealthMark =>
      const AssetGenImage('assets/images/FedHealth mark.png');

  /// List of all assets
  List<AssetGenImage> get values => [fedHealthMark];
}

abstract final class Assets {
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
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

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
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

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
