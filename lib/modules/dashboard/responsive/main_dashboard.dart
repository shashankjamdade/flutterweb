import 'package:flutter/material.dart';
import 'package:fsfb_rmadmin/modules/dashboard/responsive/dashboard_desktop.dart';
import 'package:fsfb_rmadmin/modules/dashboard/responsive/dashboard_mobile.dart';

import '../../../responsive_layout.dart';
class MainDashboard extends StatelessWidget {
  const MainDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileBody: DashboardMobile(), desktopBody: DashboardDesktop());
  }
}
