// ignore_for_file: no_leading_underscores_for_local_identifiers
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/controller/binding/initial_bindings.dart';
import 'package:project/core/localization/change_local.dart';
import 'package:project/core/localization/translation.dart';
import 'package:project/core/routes/app_routes.dart';
import 'package:project/core/server/my_server.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalController _controller = Get.put(LocalController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      locale: _controller.language,
      title: 'Flutter',
      theme: _controller.appThem,
      initialBinding: InitialBindings(),
      getPages: routes,
    );
  }
}
