import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../../shared/constants/colors.dart';
import '../../../../shared/constants/common.dart';
import '../../../../shared/utils/common_widget.dart';
class BranchCategoryManagement extends StatefulWidget {
  /// Creates the home page.
  BranchCategoryManagement({Key? key}) : super(key: key);

  @override
  _branchCategoryManagementState createState() => _branchCategoryManagementState();
}
class _branchCategoryManagementState extends State<BranchCategoryManagement> {
  List<BranchCategoryManagementModel> branchCategoryManagements = <BranchCategoryManagementModel>[];
  late BranchCategoryManagementDataSource branchCategoryManagementDataSource;

  @override
  void initState() {
    super.initState();
    branchCategoryManagements = getBranchCategoryManagementData();
    branchCategoryManagementDataSource = BranchCategoryManagementDataSource(branchCategoryManagementData: branchCategoryManagements);
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
            Text(
              "Branch category",
              style: TextStyle(
                  fontSize: CommonConstants.largeText32,
                  color: ColorConstants.black),
            ),
            CommonWidget.rowHeight(),
            SingleChildScrollView(
              child: SfDataGrid(
                gridLinesVisibility: GridLinesVisibility.both,
                headerGridLinesVisibility: GridLinesVisibility.both,
                source: branchCategoryManagementDataSource,
                columns: <GridColumn>[
                  GridColumn(
                      width: width*.1,
                      columnName: 'category',
                      label: Container(
                          padding: EdgeInsets.all(16.0),
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Category',
                                  style: TextStyle(
                                      color: ColorConstants.black,fontWeight: FontWeight.bold)),
                            ],
                          ))),
                  GridColumn(
                      width: width*.3,
                      columnName: 'notes',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.centerLeft,
                          child: Text('Notes',style: TextStyle(
                              color: ColorConstants.black,fontWeight: FontWeight.bold)))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<BranchCategoryManagementModel> getBranchCategoryManagementData() {
    return [
      BranchCategoryManagementModel('Metro', 'Branches in the state capitals qualify as metros',),
      BranchCategoryManagementModel('Urban', 'Branches in tier 2 cities qualify as urban', ),
      BranchCategoryManagementModel('Semi-urban', 'Remaining branches qualify as semi-urban', ),

    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the BranchCategoryManagement which will be rendered in datagrid.
class BranchCategoryManagementModel {
  /// Creates the BranchCategoryManagement class with required details.
  BranchCategoryManagementModel(this.category, this.notes);

  /// Id of an BranchCategoryManagement.

  /// Name of an BranchCategoryManagement.
  final String category;

  /// Designation of an BranchCategoryManagement.
  final String notes;

/// Salary of an BranchCategoryManagement.
}

/// An object to set the BranchCategoryManagement collection data source to the datagrid. This
/// is used to map the BranchCategoryManagement data to the datagrid widget.
class BranchCategoryManagementDataSource extends DataGridSource {
  /// Creates the BranchCategoryManagement data source class with required details.
  BranchCategoryManagementDataSource({required List<BranchCategoryManagementModel> branchCategoryManagementData}) {
    _branchCategoryManagementData = branchCategoryManagementData
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<String>(columnName: 'userType', value: e.category),
      DataGridCell<String>(
          columnName: 'designation', value: e.notes),
    ]))
        .toList();
  }

  List<DataGridRow> _branchCategoryManagementData = [];

  @override
  List<DataGridRow> get rows => _branchCategoryManagementData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
          return Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15.0),
            child: Text(e.value.toString(),style: TextStyle(color: ColorConstants.black),textAlign: TextAlign.start,),
          );
        }).toList());
  }
}