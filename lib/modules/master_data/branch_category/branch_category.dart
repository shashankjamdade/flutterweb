import 'package:flutter/material.dart';
import 'package:fsfb_rmadmin/common/user_description.dart';
import 'package:fsfb_rmadmin/modules/master_data/call_management/call_management.dart';
import 'package:fsfb_rmadmin/shared/constants/colors.dart';
import 'package:fsfb_rmadmin/shared/utils/common_widget.dart';

import '../../../shared/constants/common.dart';
import '../../../shared/widgets/drop_down_widget.dart';

class BranchCategory extends StatelessWidget {
  const BranchCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = "";
    var editEnable = true;
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonWidget.rowHeight(),
            Text(
              "Branch category and User class mapping",
              style: TextStyle(
                  fontSize: CommonConstants.largeText32,
                  color: ColorConstants.black),
            ),
            CommonWidget.rowHeight(),
            Theme(
              data: Theme.of(context).copyWith(dividerColor: Colors.grey),
              child: DataTable(
                border: TableBorder.all(color: ColorConstants.darkGray),
                columns: [
                  DataColumn(
                      label: Row(
                        children: [
                          Text('User Class',
                              style: TextStyle(
                                  fontSize: CommonConstants.smallText,
                                  color: ColorConstants.black)),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Image.asset(
                              'assets/images/sort_icon.png',
                              height: 20,
                              width: 20,
                            ),
                          )
                        ],
                      )),
                  DataColumn(
                      label: Text('BM',
                          style: TextStyle(
                              fontSize: CommonConstants.smallText,
                              color: ColorConstants.black))),
                  DataColumn(
                      label: Text('BSM',
                          style: TextStyle(
                              fontSize: CommonConstants.smallText,
                              color: ColorConstants.black))),
                  DataColumn(
                      label: Text('RM',
                          style: TextStyle(
                              fontSize: CommonConstants.smallText,
                              color: ColorConstants.black))),
                  DataColumn(
                      label: Text('WRM',
                          style: TextStyle(
                              fontSize: CommonConstants.smallText,
                              color: ColorConstants.black))),
                  DataColumn(
                      label: Text('CARM',
                          style: TextStyle(
                              fontSize: CommonConstants.smallText,
                              color: ColorConstants.black))),
                  DataColumn(
                      label: Text('BH',
                          style: TextStyle(
                              fontSize: CommonConstants.smallText,
                              color: ColorConstants.black))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Metro',
                        style: TextStyle(
                            fontSize: CommonConstants.smallText,
                            color: ColorConstants.black))),
                    DataCell(editEnable ? DropDownWidget() : Text('Yes')),
                    DataCell(Text('Yes')),
                    DataCell(Text('Yes')),
                    DataCell(Text('Yes')),
                    DataCell(Text('Yes')),
                    DataCell(Text('Yes')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Urban',
                        style: TextStyle(
                            fontSize: CommonConstants.smallText,
                            color: ColorConstants.black))),
                    DataCell(Text('Yes')),
                    DataCell(Text('Yes')),
                    DataCell(Text('Yes')),
                    DataCell(Text('Yes')),
                    DataCell(Text('Yes')),
                    DataCell(Text('Yes')),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Semi-urban',
                        style: TextStyle(
                            fontSize: CommonConstants.smallText,
                            color: ColorConstants.black))),
                    DataCell(Text('Yes')),
                    DataCell(Text('Yes')),
                    DataCell(Text('Yes')),
                    DataCell(Text('Yes')),
                    DataCell(Text('Yes')),
                    DataCell(Text('Yes')),
                  ]),
                ],
              ),
            ),
            CommonWidget.rowHeight(),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: ColorConstants.darkGray,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    height: 40,
                    width: 120,
                    child: Center(
                        child: Text(
                      "Cancel",
                      style: TextStyle(
                        fontSize: CommonConstants.smallText,
                        color: ColorConstants.lightGray,
                      ),
                    )),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ColorConstants.primaryAppColor,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  height: 40,
                  width: 120,
                  child: Center(
                      child: Text(
                    "Edit",
                    style: TextStyle(
                      fontSize: CommonConstants.smallText,
                      color: ColorConstants.white,
                    ),
                  )),
                ),
              ],
            ),
           UserDescription(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Note:",
                  style: TextStyle(color: ColorConstants.darkGray),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Branch cateogries are defined from “Branch category” section",
                  style: TextStyle(color: ColorConstants.darkGray),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "User classes are defined from “User class” section",
                  style: TextStyle(color: ColorConstants.darkGray),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            )
          ]),
    ));
  }
}
