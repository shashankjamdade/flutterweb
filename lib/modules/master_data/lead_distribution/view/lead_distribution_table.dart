import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../../common/user_description.dart';
import '../../../../shared/constants/colors.dart';
import '../../../../shared/constants/common.dart';
import '../../../../shared/utils/common_widget.dart';

class LeadDistributionTable extends StatefulWidget {
  /// Creates the home page.
  LeadDistributionTable({Key? key}) : super(key: key);

  @override
  _LeadDistributionTableState createState() => _LeadDistributionTableState();
}

class _LeadDistributionTableState extends State<LeadDistributionTable> {
  List<LeadDistributionTableModel> leadDistributionTables = <LeadDistributionTableModel>[];
  late LeadDistributionTableDataSource leadDistributionTableDataSource;

  @override
  void initState() {
    super.initState();
    leadDistributionTables = getLeadDistributionTableData();
    leadDistributionTableDataSource =
        LeadDistributionTableDataSource(leadDistributionTableData: leadDistributionTables);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: ListView(
        shrinkWrap: true,
        children: [
          CommonWidget.rowHeight(),
          Text(
            "Lead distribution",
            style: TextStyle(
                fontSize: CommonConstants.largeText32,
                color: ColorConstants.black),
          ),
          SizedBox(
            height: 20,
          ),
          SfDataGrid(
            allowSorting: true,
            columnWidthMode: ColumnWidthMode.fill,
            gridLinesVisibility: GridLinesVisibility.both,
            headerGridLinesVisibility: GridLinesVisibility.both,
            source: leadDistributionTableDataSource,
            columns: <GridColumn>[
              GridColumn(
                  width: width * .1,
                  columnName: 'userType',
                  label: Container(
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.centerLeft,
                      child: Text('User Class'))),
              GridColumn(
                  width: width * .07,
                  columnName: 'bm',
                  label: Container(
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.centerLeft,
                      child: Text('BM'))),
              GridColumn(
                  width: width * .07,
                  columnName: 'bsm',
                  label: Container(
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.centerLeft,
                      child: Text('BSM'))),
              GridColumn(
                  width: width * .07,
                  columnName: 'rm',
                  label: Container(
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.centerLeft,
                      child: Text('RM'))),
              GridColumn(
                  width: width * .07,
                  columnName: 'wrm',
                  label: Container(
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.centerLeft,
                      child: Text('WRM'))),
              GridColumn(
                  width: width * .07,
                  columnName: 'crm',
                  label: Container(
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.centerLeft,
                      child: Text('CRM'))),
              GridColumn(
                  width: width * .07,
                  columnName: 'bh',
                  label: Container(
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.centerLeft,
                      child: Text('BH'))),
            ],
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
        ],
      ),
    );
  }

  List<LeadDistributionTableModel> getLeadDistributionTableData() {
    return [
      LeadDistributionTableModel('Savings account', "Yes", "No", "Yes", "Yes", "Yes", "Yes"),
      LeadDistributionTableModel('Current account', "Yes", "No", "Yes", "Yes", "Yes", "Yes"),
      LeadDistributionTableModel('Family account', "Yes", "No", "Yes", "Yes", "Yes", "Yes"),
      LeadDistributionTableModel('Fixed deposit', "Yes", "No", "Yes", "Yes", "Yes", "Yes"),
      LeadDistributionTableModel('Over draft', "Yes", "No", "Yes", "Yes", "Yes", "Yes"),
      LeadDistributionTableModel('Insurance', "Yes", "No", "Yes", "Yes", "Yes", "Yes"),
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the LeadDistributionTable which will be rendered in datagrid.
class LeadDistributionTableModel {
  /// Creates the LeadDistributionTable class with required details.
  LeadDistributionTableModel(
      this.userType, this.bm, this.bsm, this.rm, this.wrm, this.crm, this.bh);

  /// Id of an LeadDistributionTable.

  /// Name of an LeadDistributionTable.
  final String userType;
  final String bm;
  final String bsm;
  final String rm;
  final String wrm;
  final String crm;
  final String bh;

/// Designation of an LeadDistributionTable.

/// Salary of an LeadDistributionTable.
}

/// An object to set the LeadDistributionTable collection data source to the datagrid. This
/// is used to map the LeadDistributionTable data to the datagrid widget.
class LeadDistributionTableDataSource extends DataGridSource {
  /// Creates the LeadDistributionTable data source class with required details.
  LeadDistributionTableDataSource(
      {required List<LeadDistributionTableModel> leadDistributionTableData}) {
    _leadDistributionTableData = leadDistributionTableData
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<String>(columnName: 'userType', value: e.userType),
      DataGridCell<String>(columnName: 'bm', value: e.bm),
      DataGridCell<String>(columnName: 'bsm', value: e.bsm),
      DataGridCell<String>(columnName: 'rm', value: e.rm),
      DataGridCell<String>(columnName: 'wrm', value: e.wrm),
      DataGridCell<String>(columnName: 'crm', value: e.crm),
      DataGridCell<String>(columnName: 'bh', value: e.bh),
    ]))
        .toList();
  }

  List<DataGridRow> _leadDistributionTableData = [];

  @override
  List<DataGridRow> get rows => _leadDistributionTableData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
          return Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              e.value.toString(),
              style: TextStyle(
                  color: e.columnName == 'userType' ? Colors.black : Colors.grey),
              textAlign: TextAlign.start,
            ),
          );
        }).toList());
  }
}
