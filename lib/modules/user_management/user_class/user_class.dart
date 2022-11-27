import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../shared/constants/colors.dart';
import '../../../shared/constants/common.dart';
import '../../../shared/utils/common_widget.dart';
class UserClass extends StatefulWidget {
  /// Creates the home page.
  UserClass({Key? key}) : super(key: key);

  @override
  _UserClassState createState() => _UserClassState();
}
class _UserClassState extends State<UserClass> {
  List<Employee> employees = <Employee>[];
  late EmployeeDataSource employeeDataSource;

  @override
  void initState() {
    super.initState();
    employees = getEmployeeData();
    employeeDataSource = EmployeeDataSource(employeeData: employees);
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
              "User role",
              style: TextStyle(
                  fontSize: CommonConstants.largeText32,
                  color: ColorConstants.black),
            ),
             CommonWidget.rowHeight(),
            SingleChildScrollView(
              child: SfDataGrid(
                allowSorting: true,
                gridLinesVisibility: GridLinesVisibility.both,
                headerGridLinesVisibility: GridLinesVisibility.both,
                source: employeeDataSource,
                columns: <GridColumn>[
                  GridColumn(
                    width: width*.1,
                      columnName: 'userType',
                      label: Container(
                          padding: EdgeInsets.all(16.0),
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('User Class',
                                  style: TextStyle(
                                      color: ColorConstants.black)),
                            ],
                          ))),
                  GridColumn(
                    width: width*.3,
                      columnName: 'designation',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.centerLeft,
                          child: Text('Description'))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Employee> getEmployeeData() {
    return [
      Employee('RM', 'Relationship Manager',),
      Employee('WRM', 'Wealth Relationship Manager', ),
      Employee('CARM', 'Current Account Relationship Manager', ),
      Employee('BSM', 'Branch Sales Manager', ),
      Employee('BH', 'Branch Head', ),
      Employee('BM', 'Branch Manager', ),
      Employee('Corp', 'Corporate - non field', ),
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the employee which will be rendered in datagrid.
class Employee {
  /// Creates the employee class with required details.
  Employee(this.userType, this.designation);

  /// Id of an employee.

  /// Name of an employee.
  final String userType;

  /// Designation of an employee.
  final String designation;

  /// Salary of an employee.
}

/// An object to set the employee collection data source to the datagrid. This
/// is used to map the employee data to the datagrid widget.
class EmployeeDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  EmployeeDataSource({required List<Employee> employeeData}) {
    _employeeData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
      DataGridCell<String>(columnName: 'userType', value: e.userType),
      DataGridCell<String>(
          columnName: 'designation', value: e.designation),
    ]))
        .toList();
  }

  List<DataGridRow> _employeeData = [];

  @override
  List<DataGridRow> get rows => _employeeData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
          return Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15.0),
            child: Text(e.value.toString(),style: TextStyle(color: e.columnName=='userType'?Colors.black:Colors.grey),textAlign: TextAlign.start,),
          );
        }).toList());
  }
}