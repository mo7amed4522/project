import 'package:get/get.dart';
import 'package:project/core/middleware/my_middleware.dart';
import 'package:project/core/routes/router.dart';
import 'package:project/view/screen/start_screen/start_screen.dart';

List<GetPage<dynamic>>? routes = [
  //================= Home =============//
  GetPage(
      name: AppRoutes.start,
      page: () => const StartScreen(),
      middlewares: [MyMiddleWare()]),
];
