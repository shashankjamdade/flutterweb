import 'package:flutter/material.dart';

import '../../../responsive_layout.dart';
import 'login_desktop.dart';
import 'login_mobile.dart';
class AuthMain extends StatelessWidget {
  const AuthMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileBody: LoginMobile(), desktopBody: LoginDesktop());
  }
}
