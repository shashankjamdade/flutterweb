import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fsfb_rmadmin/modules/dashboard/responsive/main_dashboard.dart';
import 'package:fsfb_rmadmin/shared/shared.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app_binding.dart';
import 'di.dart';
import 'lang/lang.dart';
import 'routes/routes.dart';
import 'theme/theme.dart';

void main() async {
  setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await DenpendencyInjection.init();

  runApp(App());
  configLoading();
}


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: '/branchcategory',
      defaultTransition: Transition.fade,
      // getPages: AppPages.routes,
      initialBinding: AppBinding(),
      smartManagement: SmartManagement.keepFactory,
      title: 'Flutter GetX Boilerplate',
      // theme: ThemeConfig.lightTheme,
      theme: ThemeData(
        fontFamily:'Montserrat',
        primarySwatch: Colors.yellow,
      ),
      locale: TranslationService.locale,
      fallbackLocale: TranslationService.fallbackLocale,
      // translations: TranslationService(),
      builder: EasyLoading.init(),
      getPages: [GetPage(name: "/:page_name", page: () => MainDashboard())],
    );

  }
}

void configLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.threeBounce
    ..loadingStyle = EasyLoadingStyle.custom
  // ..indicatorSize = 45.0
    ..radius = 10.0
  // ..progressColor = Colors.yellow
    ..backgroundColor = ColorConstants.lightGray
    ..indicatorColor = hexToColor('#64DEE0')
    ..textColor = hexToColor('#64DEE0')
  // ..maskColor = Colors.red
    ..userInteractions = false
    ..dismissOnTap = false
    ..animationStyle = EasyLoadingAnimationStyle.scale;
}
