import 'package:fsfb_rmadmin/routes/routes.dart';
import 'package:fsfb_rmadmin/shared/shared.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  @override
  void onReady() async {
    super.onReady();

    await Future.delayed(Duration(milliseconds: 2000));
    var storage = Get.find<SharedPreferences>();
    try {
      // if (storage.getString(StorageConstants.token) != null) {
      //   Get.toNamed(Routes.AUTHMAIN);
      // } else {
        Get.toNamed(Routes.MAINDASHBOARD);
      // }
    } catch (e) {
      // Get.toNamed(Routes.AUTHMAIN);
    }
  }
}
