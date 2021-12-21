import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intellect_tv/controller/controller.dart';

import 'ui/pages/app.dart';

void main() {
  Get.lazyPut<Controller>(() => Controller());
  runApp(const App());
}
