import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../../shared/constants/colors.dart';
import '../../../../shared/constants/common.dart';
import '../../../../shared/utils/common_widget.dart';
import '../../../../shared/widgets/input_field.dart';

class BranchList extends StatefulWidget {
  /// Creates the home page.
  BranchList({Key? key}) : super(key: key);

  @override
  _BranchListState createState() => _BranchListState();
}
class _BranchListState extends State<BranchList> {
  List<BranchListModel> branchLists = <BranchListModel>[];
  late BranchListDataSource branchListDataSource;
  final branchSearchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    branchLists = getBranchListData();
    branchListDataSource = BranchListDataSource(BranchListData: branchLists);
  }

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Expanded(
        flex: 1,
        child: ListView(
          shrinkWrap: true,
          children: [
            CommonWidget.rowHeight(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Branch list",
                  style: TextStyle(
                      fontSize: CommonConstants.largeText32,
                      color: ColorConstants.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: width*.1,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                      ),
                      child: InputField(
                        alignment: TextAlign.left,
                        fontSize: CommonConstants.smallText14,
                        controller:branchSearchController,
                        keyboardType: TextInputType.text,
                        placeholder: 'Enter branch ID',
                        password: false,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return '';
                          }

                          if (value.length < 6 || value.length > 15) {
                            return 'Enter Something';
                          }

                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      width: width*.03,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: ColorConstants.primaryAppColor,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      height: 30,
                      width: 100,
                      child: Center(
                          child: Text(
                            "Search",
                            style: TextStyle(
                              fontSize: CommonConstants.smallText,
                              color: ColorConstants.white,
                            ),
                          )),
                    ),
                  ],
                )

              ],
            ),
            CommonWidget.rowHeight(),
            SingleChildScrollView(
              child: SfDataGrid(
                allowSorting: true,
                gridLinesVisibility: GridLinesVisibility.both,
                headerGridLinesVisibility: GridLinesVisibility.both,
                source: branchListDataSource,
                columns: <GridColumn>[
                  GridColumn(
                      width: width*.1,
                      columnName: 'branchType',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.centerLeft,
                          child: Text('Branch Type',style: TextStyle(color: ColorConstants.black,fontWeight: FontWeight.bold)))),
                  GridColumn(
                      width: width*.1,
                      columnName: 'branchId',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.centerLeft,
                          child: Text('Branch ID',style: TextStyle(color: ColorConstants.black,fontWeight: FontWeight.bold)))),
                  GridColumn(
                      width: width*.12,
                      columnName: 'branchAddress',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.centerLeft,
                          child: Text('Branch Address',style: TextStyle(color: ColorConstants.black,fontWeight: FontWeight.bold)))),
                  GridColumn(
                      width: width*.12,
                      columnName: 'branchCategory',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.centerLeft,
                          child: Text('Branch Category',style: TextStyle(color: ColorConstants.black,fontWeight: FontWeight.bold),))),
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
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Note: All the branches from the branch master are auto fecthed to this application. Only branch categorisation to be done by the admin",
                  style: TextStyle(color: ColorConstants.darkGray),
                ),
                SizedBox(
                  height: 10,
                ),
                CommonWidget.rowHeight(),
              ],
            )
          ],
        ),
      ),
    );
  }

  List<BranchListModel> getBranchListData() {
    return [
      BranchListModel('Samruddhi',001,'Bangalore, Karnataka','Rural',),
      BranchListModel('Srinath',002,'Bangalore, Karnataka','Urban',),
      BranchListModel('Pragati',003,'Bangalore, Karnataka','Semi-Urban',),
      BranchListModel('Ajay Kumar',004,'Bangalore, Karnataka','Urban',),
      BranchListModel('Srinath',005,'Bangalore, Karnataka','Rural',),
      BranchListModel('Hari',006,'Bangalore, Karnataka','Semi-Urban',),
      BranchListModel('Samruddhi',007,'Bangalore, Karnataka','Semi-Urban',),
      BranchListModel('Ajay Kumar',008,'Bangalore, Karnataka','Rural',),
      BranchListModel('Gati',009,'Bangalore, Karnataka','Urban',),
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the BranchList which will be rendered in datagrid.
class BranchListModel {
  /// Creates the BranchList class with required details.
  BranchListModel(this.branchType, this.branchId,this.branchAddress,this.branchCategory);

  /// Id of an BranchList.

  /// Name of an BranchList.
  final String branchType;
  /// Designation of an BranchList.
  final int branchId;
  final String branchAddress;
  final String branchCategory;

/// Salary of an BranchList.
}

/// An object to set the BranchList collection data source to the datagrid. This
/// is used to map the BranchList data to the datagrid widget.
class BranchListDataSource extends DataGridSource {
  /// Creates the BranchList data source class with required details.
  BranchListDataSource({required List<BranchListModel> BranchListData}) {
    _BranchListData = BranchListData
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<String>(columnName: 'branchType', value: e.branchType),
      DataGridCell<int>(columnName: 'branchId', value: e.branchId),
      DataGridCell<String>(columnName: 'branchAddress', value: e.branchAddress),
      DataGridCell<String>(columnName: 'branchCategory', value: e.branchCategory),
    ]))
        .toList();
  }

  List<DataGridRow> _BranchListData = [];

  @override
  List<DataGridRow> get rows => _BranchListData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
          return Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15.0),
            child: Text(e.value.toString(),style: TextStyle(color:ColorConstants.black,decoration: e.columnName=='name'?TextDecoration.underline:null,),textAlign: TextAlign.start,),
          );
        }).toList());
  }
}