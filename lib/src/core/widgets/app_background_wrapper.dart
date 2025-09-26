import 'package:flutter/material.dart';
import 'package:simple_paint/gen/assets.gen.dart';

class AppBackgroundWrapper extends StatefulWidget {
  const AppBackgroundWrapper({super.key, required this.child});
  final Widget? child;

  @override
  State<AppBackgroundWrapper> createState() => _AppBackgroundWrapperState();
}

class _AppBackgroundWrapperState extends State<AppBackgroundWrapper> {
  final _bg = $AssetsImagesGen().bgImage.provider();
  final _pattern = $AssetsImagesGen().pattern.provider();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(_bg, context);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Positioned.fill(
          child: Image(
            image: _bg,
            fit: BoxFit.cover,
            alignment: Alignment.center,
            width: size.width,
            height: size.height,
            filterQuality: FilterQuality.low,
          ),
        ),
        Positioned.fill(
          child: Image(
            image: _pattern,
            fit: BoxFit.fill,
            alignment: Alignment.bottomCenter,
            width: size.width,
            height: size.height,
            filterQuality: FilterQuality.low,
          ),
        ),
        Positioned.fill(
          child: IgnorePointer(
            child: Container(color: Colors.black.withOpacity(0.12)),
          ),
        ),
        Positioned.fill(child: widget.child ?? const SizedBox.shrink()),
      ],
    );
  }
}
