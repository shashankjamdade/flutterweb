import 'package:fsfb_rmadmin/modules/auth/auth.dart';
import 'package:fsfb_rmadmin/modules/auth/responsive/login_desktop.dart';
import 'package:fsfb_rmadmin/modules/auth/responsive/login_mobile.dart';
import 'package:fsfb_rmadmin/modules/branch_management/branch%20_category_management/view/branch_category_management.dart';
import 'package:fsfb_rmadmin/modules/branch_management/branch_list/view/branch_list.dart';
import 'package:fsfb_rmadmin/modules/dashboard/responsive/dashboard_desktop.dart';
import 'package:fsfb_rmadmin/modules/dashboard/responsive/dashboard_mobile.dart';
import 'package:fsfb_rmadmin/modules/dashboard/responsive/main_dashboard.dart';
import 'package:fsfb_rmadmin/modules/home/home.dart';
import 'package:fsfb_rmadmin/modules/master_data/branch_category/branch_category.dart';
import 'package:fsfb_rmadmin/modules/master_data/call_management/call_management.dart';
import 'package:fsfb_rmadmin/modules/master_data/lead_distribution/lead_distribution.dart';
import 'package:fsfb_rmadmin/modules/me/cards/cards_screen.dart';
import 'package:fsfb_rmadmin/modules/modules.dart';
import 'package:fsfb_rmadmin/modules/user_management/customer_portfolio/customer%E2%80%A8_portfolio.dart';
import 'package:fsfb_rmadmin/modules/user_management/user_class/user_class.dart';
import 'package:fsfb_rmadmin/modules/user_management/user_list/user_list.dart';
import 'package:get/get.dart';

import '../modules/auth/responsive/auth_main.dart';
import '../modules/dashboard/dashboard_binding.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.AUTHMAIN,
      page: () => AuthMain(),
      binding: AuthBinding(),
      children: [
        GetPage(name: Routes.REGISTER, page: () => RegisterScreen()),
        GetPage(name: Routes.LOGIN, page: () => LoginScreen()),
      ],
    ),
    GetPage(
        name: Routes.LOGINMOBILE,
        page: () => LoginMobile(),
        binding: AuthBinding(),
        ),
    GetPage(
        name: Routes.LOGINDESKTOP,
        page: () => LoginDesktop(),
        binding: AuthBinding(),
        children: [
        ]),

    GetPage(
        name: Routes.MAINDASHBOARD,
        page: () => MainDashboard(),
        binding: DashboardBinding(),
        children: [
        ]),
    GetPage(
        name: Routes.DASHBOARDMOBILE,
        page: () => DashboardMobile(),
        binding: DashboardBinding(),
        children: [
        ]),
    GetPage(
        name: Routes.DASHBOARDESKTOP,
        page: () => DashboardDesktop(),
        binding: DashboardBinding(),
        children: [
        ]),
    GetPage(
        name: Routes.BRANCHCATEGORY,
        page: () => BranchCategory(),
        binding: DashboardBinding(),
       ),
    GetPage(
        name: Routes.LEADDISTRIBUTION,
        page: () => LeadDistribution(),
        binding: DashboardBinding(),
        children: [
        ]),
    GetPage(
        name: Routes.CALLMANAGEMENT,
        page: () => CallManagement(),
        binding: DashboardBinding(),
        children: [
        ]),

    GetPage(
        name: Routes.USERCLASS,
        page: () => UserClass(),
        binding: DashboardBinding(),
      ),


    GetPage(
        name: Routes.CUSTOMERPORTFOLIO,
        page: () => CustomerPortfolio(),
        binding: DashboardBinding(),
        ),

    GetPage(
        name: Routes.USERLIST,
        page: () => UserList(),
        binding: DashboardBinding(),
       ),


    GetPage(
      name: Routes.BRANCHCATEGORYMANAGEMENT,
      page: () => BranchCategoryManagement(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: Routes.USERLIST,
      page: () => BranchList(),
      binding: DashboardBinding(),
    ),
    GetPage(
        name: Routes.HOME,
        page: () => HomeScreen(),
        binding: HomeBinding(),
        children: [
          GetPage(name: Routes.CARDS, page: () => CardsScreen()),
        ]),
  ];
}
