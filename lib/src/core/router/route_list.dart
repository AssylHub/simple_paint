part of 'router.dart';

List<RouteBase> _routes() => <RouteBase>[
      GoRoute(
        path: RoutePaths.initial,
        name: RouteNames.initial,
        redirect: (context, state) async {
          return RoutePaths.auth;
        },
      ),
      GoRoute(
        path: RoutePaths.auth,
        name: RouteNames.auth,
        builder: (context, state) {
          return AuthPage();
        },
      ),
      GoRoute(
        path: RoutePaths.register,
        name: RouteNames.register,
        builder: (context, state) {
          return RegisterPage();
        },
      ),
      GoRoute(
        path: RoutePaths.main,
        name: RouteNames.main,
        builder: (context, state) {
          return MainPage();
        },
      ),
      GoRoute(
        path: RoutePaths.painter,
        name: RouteNames.painter,
        builder: (context, state) {
          return PainterPage();
        },
      ),
      GoRoute(
        path: RoutePaths.upload,
        name: RouteNames.upload,
        builder: (context, state) {
          final FilePickerResult result = state.extra as FilePickerResult;
          return UploadArea(
            selectedFile: result,
          );
        },
      ),
    ];
