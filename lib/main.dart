import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intellect_tv/controller/controller.dart';
import 'package:loggy/loggy.dart';

import 'ui/pages/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );
  Get.lazyPut<Controller>(() => Controller());
  runApp(App());
}
