import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_paint/src/app/flavor_builds.dart';
import 'package:simple_paint/src/core/router/router.dart';
import 'package:talker_flutter/talker_flutter.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final GoRouter router;
  late final Talker talker;

  @override
  void initState() {
    super.initState();
    router = routerProvider();
  }

  @override
  Widget build(BuildContext context) {
    return buildMaterialApp(router: router);
  }
}
