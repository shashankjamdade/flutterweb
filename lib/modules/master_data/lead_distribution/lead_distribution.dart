import 'package:flutter/material.dart';
import 'package:fsfb_rmadmin/modules/master_data/call_management/call_management.dart';
import 'package:fsfb_rmadmin/shared/constants/colors.dart';
import 'package:fsfb_rmadmin/shared/utils/common_widget.dart';

import '../../../shared/constants/common.dart';
import '../../../shared/widgets/drop_down_widget.dart';

class LeadDistribution extends StatelessWidget {
  const LeadDistribution({Key? key}) : super(key: key);

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
                  "Lead distribution",
                  style: TextStyle(
                      fontSize: CommonConstants.largeText32,
                      color: ColorConstants.black),
                ),
                Row(
                  children: [
                    Icon(Icons.error_outline,color: ColorConstants.red,),
                    Text(
                      "Only for Cross Sell and Connector leads",
                      style: TextStyle(
                          color: ColorConstants.red),
                    ),
                  ],
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
                        DataCell(Text('LeadDistribution',
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
                        DataCell(Text('Savings account',
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
                        DataCell(Text('Current account',
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
                        DataCell(Text('Family account',
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
                        DataCell(Text('Fixed deposit',
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
                        DataCell(Text('Over draft',
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
                        DataCell(Text('Insurance',
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, right: 30.0),
                      child: Table(
                        border: TableBorder.all(color: ColorConstants.grey1),
                        // textDirection: TextDirection.rtl,
                        // defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                        // border:TableBorder.all(width: 2.0,color: Colors.red),
                        children: [
                          TableRow(
                              decoration: BoxDecoration(
                                  color: ColorConstants
                                      .grey2 // Background color for the row, // To alternate between dark and light shades of the row's background color.
                              ),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    "User abbreviation",
                                    textScaleFactor: 1.5,
                                  ),
                                ),
                                Text("", textScaleFactor: 1.5),
                              ]),
                          TableRow(
                              decoration: BoxDecoration(
                                  color: ColorConstants
                                      .grey3 // Background color for the row, // To alternate between dark and light shades of the row's background color.
                              ),
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8.0,
                                        left: 15.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              "RM",
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              ":",
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 8,
                                            child: Text(
                                              "Relationship Manager",
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8.0,
                                        left: 15.0,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Text("WRM",
                                                textAlign: TextAlign.left),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Text(":",
                                                textAlign: TextAlign.center),
                                          ),
                                          Expanded(
                                            flex: 8,
                                            child: Text(
                                                "Wealth Relationship Manager",
                                                textAlign: TextAlign.left),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 8.0,
                                        left: 15.0,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Text("CARM",
                                                textAlign: TextAlign.left),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Text(":",
                                                textAlign: TextAlign.center),
                                          ),
                                          Expanded(
                                            flex: 8,
                                            child: Text(
                                                "Current Account Relationship Manager",
                                                textAlign: TextAlign.left),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, left: 15.0, bottom: 8.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Text("BSM",
                                                textAlign: TextAlign.left),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Text(":",
                                                textAlign: TextAlign.center),
                                          ),
                                          Expanded(
                                            flex: 8,
                                            child: Text("Branch Sales Manager",
                                                textAlign: TextAlign.left),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    )
                                  ],
                                ),
                                Column(children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 8.0,
                                      left: 15.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "BM",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            ":",
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 8,
                                          child: Text(
                                            "Branch Manager",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 8.0,
                                      left: 15.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "BH",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            ":",
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 8,
                                          child: Text(
                                            "Branch Head",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  )
                                ]),
                              ]),
                        ],
                      ),
                    )
                  ],
                ),
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
