import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_paint/src/core/widgets/app_background_wrapper.dart';

MaterialApp buildMaterialApp({required GoRouter router}) {
  return MaterialApp.router(
    debugShowCheckedModeBanner: false,
    // routerConfig: router,
    routerDelegate: router.routerDelegate,
    routeInformationParser: router.routeInformationParser,
    routeInformationProvider: router.routeInformationProvider,
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
      ).copyWith(surface: Colors.transparent, onSurface: Colors.white),
    ),
    builder: (context, child) => AppBackgroundWrapper(child: child),
  );
}
