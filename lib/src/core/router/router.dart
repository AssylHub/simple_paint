import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_paint/src/features/auth/presentation/pages/auth_page.dart';
import 'package:simple_paint/src/features/auth/presentation/pages/register_page.dart';
import 'package:simple_paint/src/features/editor/presentation/pages/painter_page.dart';
import 'package:simple_paint/src/features/gallery/presentation/pages/main_page.dart';
import 'package:simple_paint/src/features/gallery/presentation/pages/upload_page.dart';

part 'route_list.dart';
part 'router_names.dart';
part 'router_paths.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter routerProvider() {
  final goRouter = GoRouter(
    initialLocation: RoutePaths.initial,
    debugLogDiagnostics: true,
    navigatorKey: rootNavigatorKey,
    routes: _routes(),
    // observers: [TalkerRouteObserver(getIt<Talker>())],
  );
  return goRouter;
}
