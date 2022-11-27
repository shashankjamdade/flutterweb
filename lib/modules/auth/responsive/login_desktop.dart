import 'package:flutter/material.dart';
import 'package:fsfb_rmadmin/shared/constants/colors.dart';
import 'package:fsfb_rmadmin/shared/shared.dart';
import 'package:fsfb_rmadmin/shared/widgets/base_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../shared/constants/common.dart';
import '../../../shared/utils/common_widget.dart';
import '../../../shared/utils/regex.dart';
import '../../../shared/widgets/border_button.dart';
import '../../../shared/widgets/input_field.dart';
import '../auth_controller.dart';
class LoginDesktop extends StatelessWidget {
   LoginDesktop({Key? key}) : super(key: key);
   final registerEmailController = TextEditingController();

   @override
  Widget build(BuildContext context) {
     var width=MediaQuery.of(context).size.width;
     var height= MediaQuery.of(context).size.height;
     final AuthController controller = Get.put(Get.find());
     return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: ColorConstants.white),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Container(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            image:DecorationImage(
                              image: AssetImage(
                                'assets/images/app_icon.png',
                              ),
                            ),
                          ),

                        ),
                      ),
                      Expanded(
                        flex: 8,
                          child: Container())
                    ],
                  ),
                ),
              ),
            ),
            Divider(
                color: ColorConstants.darkGray,
              thickness:.5,
            ),
            Expanded(
              flex: 10,
              child: Container(
                width: double.maxFinite,
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.only(left:50 ,right: 50),
                        child: Container(
                         child:FittedBox(
                            child: Image.asset('assets/images/web_login.png'),
                            fit: BoxFit.fill,
                            alignment: Alignment.topCenter,
                          ),

                        ),
                      ),
                    ),
                    Expanded(
                        flex: 4,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color:ColorConstants.darkGray ,width:1)),
                          child: Column(
                            children: [
                              Expanded(
                                flex:1,
                                child: Container(
                                  width: double.infinity,
                                  child: Center(
                                    child: Text("Use IDAM credentials",style: TextStyle(fontSize:CommonConstants.smallText
                                    ),),
                                  ),
                                  decoration: BoxDecoration(color: ColorConstants.lightGray,),
                                ),
                              ),
                              Divider(
                                color: ColorConstants.darkGray,
                                thickness:.5,
                              ),
                              Expanded(
                                flex:10,
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Container(
                                   child: Column(
                                     mainAxisAlignment:MainAxisAlignment.center,
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: [
                                       Text("User ID",style: TextStyle(fontSize:CommonConstants.smallText
                                       ),),
                                       CommonWidget.rowHeight(),
                                       Container(
                                         alignment: Alignment.center,
                                         decoration: BoxDecoration(
                                             border: Border.all(color:ColorConstants.darkGray )),
                                         child: Center(
                                           child: InputField(
                                             controller:controller.loginEmailController,
                                             keyboardType: TextInputType.text,
                                             placeholder: 'Enter your user ID',
                                             validator: (value) {
                                               if (!Regex.isEmail(value!)) {
                                                 return 'Email format error.';
                                               }

                                               if (value.isEmpty) {
                                                 return 'Email is required.';
                                               }
                                               return null;
                                             },
                                           ),
                                         ),
                                       ),
                                       CommonWidget.rowHeight(),
                                       Text("Password",style: TextStyle(fontSize:CommonConstants.smallText
                                       ),),
                                       CommonWidget.rowHeight(),
                                       Container(
                                         alignment: Alignment.center,
                                         decoration: BoxDecoration(
                                             border: Border.all(color:ColorConstants.darkGray )),
                                         child: InputField(
                                           controller:controller.loginPasswordController,
                                           keyboardType: TextInputType.emailAddress,
                                           placeholder: 'Enter your password',
                                           password: true,
                                           validator: (value) {
                                             if (value!.isEmpty) {
                                               return 'Password is required.';
                                             }

                                             if (value.length < 6 || value.length > 15) {
                                               return 'Password should be 6~15 characters';
                                             }

                                             return null;
                                           },
                                         ),
                                       ),
                                       CommonWidget.rowHeight(),
                                       Column(
                                         children: [
                                           Text("Forgot password?",style: TextStyle(fontSize:CommonConstants.smallText
                                               ,color: ColorConstants.primaryAppColor,
                                             decoration: TextDecoration.underline,
                                           ),),
                                           Divider(
                                             indent: width*.5, //150px from left side
                                             endIndent: width*.5, //150px from right side
                                             color: ColorConstants.primaryAppColor,
                                             thickness:.5,
                                           ),
                                         ],
                                       ),

                                       CommonWidget.rowHeight(),
                                       CommonWidget.rowHeight(),
                                       BaseButton(
                                         text: 'Login',
                                         onPressed: () {
                                         },
                                         color: ColorConstants.primaryAppColor,
                                       ),
                                     ],
                                   ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
