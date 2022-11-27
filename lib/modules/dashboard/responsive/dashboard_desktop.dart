import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fsfb_rmadmin/modules/branch_management/branch%20_category_management/view/branch_category_management.dart';
import 'package:fsfb_rmadmin/modules/branch_management/branch_list/view/branch_list.dart';
import 'package:fsfb_rmadmin/modules/master_data/branch_category/branch_category.dart';
import 'package:fsfb_rmadmin/modules/master_data/call_management/call_management.dart';
import 'package:fsfb_rmadmin/modules/master_data/lead_distribution/lead_distribution.dart';
import 'package:fsfb_rmadmin/modules/user_management/customer_portfolio/customer%E2%80%A8_portfolio.dart';
import 'package:fsfb_rmadmin/modules/user_management/user_class/user_class.dart';
import 'package:fsfb_rmadmin/modules/user_management/user_list/user_list.dart';
import 'package:fsfb_rmadmin/shared/constants/colors.dart';
import 'package:get/get.dart';
import '../../master_data/branch_category/view/branch_category_table.dart';
import '../../master_data/lead_distribution/view/lead_distribution_table.dart';
import '../controller/dashboard_controller.dart';
import '../model/drawer_model.dart';
class DashboardDesktop extends StatelessWidget {
  Widget? view;

  DashboardDesktop() {
    Map<String, Widget> InnterRoutes = {'branchcategory': BranchCategoryTable(), 'leaddistribution': LeadDistributionTable(),'callmanagement':CallManagement(),
      'userclass':UserClass(),'customerportfolio':CustomerPortfolio(),'userlist':UserList(),'branchcategorymanagement':BranchCategoryManagement(),'branchlist':BranchList()};
    view = InnterRoutes[Get.parameters['page_name']];
  }
  List<String> categorys = [
    'Home',
    'Campaign Management',
    'Master Data',
    'User Management',
    'Branch Management',
  ];
  List<DrawerModel> dummyData = [

    DrawerModel(
      subcategory: 'Branch category & User class mapping',
      category: 'Master Data',
    ),

    DrawerModel(
      subcategory: 'Lead distribution',
      category: 'Master Data',
    ),

    DrawerModel(
      subcategory: 'Call management',
      category: 'Master Data',
    ),
    DrawerModel(
      subcategory: 'User Class',
      category: 'User Management',
    ),
    DrawerModel(
      subcategory: 'User class & customer portfolio',
      category: 'User Management',
    ),
    DrawerModel(
      subcategory: 'User list',
      category: 'User Management',
    ),
    DrawerModel(
      subcategory: 'Branch Category',
      category: 'Branch Management',
    ),
    DrawerModel(
      subcategory: 'Branch List',
      category: 'Branch Management',
    ),
  ];
  DashboardController controller=Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    var _mediaQueryData = MediaQuery
        .of(context)
        .size
        .height;
    var _mediaQueryDataWidth = MediaQuery
        .of(context)
        .size
        .width;
    var selectedIndex = 0;
    return SafeArea(
        child: Scaffold(
          body: Container(
            color: ColorConstants.white,
            child: Column(
              children: [
                Expanded(
                  flex:1,
                  child: Container(
                    color: ColorConstants.white,
                    width: double.maxFinite,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Text("Last Successfull Login : ",style: TextStyle(color: Colors.grey)),
                                        Text("12-04-2022. 12:40",style: TextStyle(color: Colors.black),)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text("Last unsuccessfull Login : ",style: TextStyle(color: Colors.grey)),
                                        Text("12-04-2022. 12:40",style: TextStyle(color: Colors.black),)
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              VerticalDivider(
                                  color: ColorConstants.grey1
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Icon(Icons.notification_add,color: Colors.red,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text("Welcome! ",style: TextStyle(color: Colors.grey)),
                                            Text("Ashok Kumar",style: TextStyle(color: Colors.black),),
                                          ],
                                        ),
                                        Text("654321",style: TextStyle(color: Colors.grey)),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Icon(Icons.arrow_drop_down_sharp,color: ColorConstants.black,),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                    color: ColorConstants.grey1
                ),
                Expanded(
                  flex: 9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 2,
                          child: SingleChildScrollView(
                            child: Container(
                              color: ColorConstants.white,
                              width: double.maxFinite,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListView.builder(
                                    itemCount: categorys.length,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemBuilder: (_, index) {
                                      return Obx(()=>
                                          Theme(
                                            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                            child: ExpansionTile(
                                                key: GlobalKey(),
                                                onExpansionChanged: (expended) {
                                                  if (expended)
                                                    controller.mainSelectedColor(index);
                                                  else
                                                    controller.mainSelectedColor(-1);
                                                },
                                                initiallyExpanded: index == controller.mainSelectedIndex.value,
                                                title: Text(categorys[index].toString(),style: TextStyle(fontSize:14),),
                                                leading: Icon(Icons.check_box_outline_blank,color: ColorConstants.grey4,),
                                                trailing: const SizedBox(),
                                                children: [
                                                  ...dummyData.map((e) {
                                                    if (e.category == categorys[index]) {
                                                      return Padding(
                                                        padding: const EdgeInsets.only(
                                                            left: 40.0),
                                                        child: ListTile(
                                                          textColor:
                                                          controller.selectedValue.value == e.subcategory.toString()
                                                              ? controller.isSelected.value
                                                              ? Colors.yellow
                                                              : Colors.yellow
                                                              : ColorConstants.black,
                                                          leading: Icon(
                                                            Icons.check_box_outline_blank,
                                                            color: controller.selectedValue.value ==
                                                                e.subcategory.toString()
                                                                ? controller.isSelected.value
                                                                ? Colors.yellow
                                                                : ColorConstants.grey4
                                                                : ColorConstants.grey4,
                                                          ),
                                                          title: Text(e.subcategory.toString(),style: TextStyle(fontSize:14)),
                                                          onTap: () {
                                                            selectedIndex = index;
                                                            controller.mainSelectedValue(e.subcategory.toString());
                                                            controller.selectedColor(true);
                                                            // controller.changeScreen(0);
                                                            switch(e.subcategory.toString())
                                                                {
                                                              case "Branch category & User class mapping":
                                                                Get.toNamed('/branchcategory');
                                                                break;
                                                              case "Lead distribution":
                                                                Get.toNamed('/leaddistribution');
                                                                break;
                                                              case "Call management":
                                                                Get.toNamed('/callmanagement');
                                                                break;
                                                              case "User Class":
                                                                Get.toNamed('/userclass');
                                                                break;
                                                                case "User class & customer portfolio":
                                                                Get.toNamed('/customerportfolio');
                                                                break;
                                                                case "User list":
                                                                Get.toNamed('/userlist');
                                                                break;

                                                              case "Branch Category":
                                                                Get.toNamed('/branchcategorymanagement');
                                                                break;
                                                              case "Branch List":
                                                                Get.toNamed('/branchlist');
                                                                break;
                                                            }
                                                            // Get.snackbar(
                                                            //   "${e.subcategory.toString()}${controller
                                                            //       .isSelected.value}",
                                                            //   "content",
                                                            // );
                                                          },
                                                        ),
                                                      );
                                                    }
                                                    return Container();
                                                  }).toList(),
                                                ]),
                                          ),
                                      );
                                    }

                                    ,
                                  ),
                                  // ListTile(
                                  //   hoverColor: Colors.black12,
                                  //   leading: Icon(Icons.menu),
                                  //   title: Text("Dashboard"),
                                  //   onTap: (){
                                  //     Get.toNamed('/home');
                                  //   },
                                  // ),
                                  // ListTile(
                                  //   hoverColor: Colors.black12,
                                  //   leading: Icon(CupertinoIcons.square_favorites_alt),
                                  //   title: Text("Sales"),
                                  //   onTap: (){
                                  //     Get.toNamed('/expend_list');
                                  //   },
                                  // )
                                ],
                              ),
                            ),
                          )),
                      VerticalDivider(
                          color: ColorConstants.grey1
                      ),
                      Expanded(
                          flex: 8,
                          child: SingleChildScrollView(
                            child: Container(
                              color: Colors.white,
                              child: view,
                            ),
                          ))
                    ],
                  ),
                ),
                Divider(
                    color: ColorConstants.grey1
                ),
                Expanded(
                  flex:1,
                  child: Container(
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(color: ColorConstants.white),
                    child:  Padding(
                      padding: const EdgeInsets.only(top: 8.0,right: 10),
                      child: Text(
                        "© 2022 Fincare Small Finance Bank Limited",
                        style: TextStyle(
                          color: ColorConstants.darkGray
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
