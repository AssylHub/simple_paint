// ignore_for_file: unused_element

import 'package:talker/talker.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'debug.dart';
part 'error.dart';
part 'info.dart';

// class Log {
//   static void info(String title, Object message) =>
//       getIt<Talker>().logCustom(_InfoWithTitle(title, message.toString()));
//   static void i(Object message) =>
//       getIt<Talker>().logCustom(_Info(message.toString()));

//   static void error(String title, Object message) =>
//       getIt<Talker>().logCustom(_ErrorWithTitle(title, message.toString()));
//   static void e(Object message) =>
//       getIt<Talker>().logCustom(_Error(message.toString()));

//   static void debug(String title, Object message) =>
//       kDebugMode
//           ? getIt<Talker>().logCustom(
//             _DebugWithTitle(title, message.toString()),
//           )
//           : null;
//   static void d(Object message) =>
//       kDebugMode ? getIt<Talker>().logCustom(_Debug(message.toString())) : null;
// }
