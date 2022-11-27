import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../shared/constants/colors.dart';
import '../../../shared/constants/common.dart';
import '../../../shared/utils/common_widget.dart';
import '../../../shared/widgets/input_field.dart';

class UserList extends StatefulWidget {
  /// Creates the home page.
  UserList({Key? key}) : super(key: key);

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<UserListModel> userLists = <UserListModel>[];
  late UserListDataSource userListDataSource;
  final userSearchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    userLists = getUserListData();
    userListDataSource = UserListDataSource(userListData: userLists);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
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
                  "User list",
                  style: TextStyle(
                      fontSize: CommonConstants.largeText32,
                      color: ColorConstants.black),
                ),
                CommonWidget.rowHeight(),
                Text(
                  'Field Agents',
                  style: TextStyle(
                      color: ColorConstants.yellow,
                      fontSize: CommonConstants.smallText),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex:1,
                      child: Divider(
                        color: ColorConstants.yellow,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Container(
                        child: FittedBox(
                          child:
                          Image.asset('assets/images/up_triangle_icon.png'),
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                    Expanded(
                      flex:40,
                      child: Divider(
                        color: ColorConstants.yellow,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: width * .2,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(),
                      child: InputField(
                        alignment: TextAlign.start,
                        fontSize: CommonConstants.smallText14,
                        controller: userSearchController,
                        keyboardType: TextInputType.text,
                        placeholder: 'Search by employee ID / Branch ID',
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
                      width: width * .03,
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
                ),

              ],
            ),
            CommonWidget.rowHeight(),
            SingleChildScrollView(
              child: SfDataGrid(
                selectionMode: SelectionMode.single,
                allowSorting: true,
                allowEditing: true,
                gridLinesVisibility: GridLinesVisibility.both,
                headerGridLinesVisibility: GridLinesVisibility.both,
                source: userListDataSource,
                columns: <GridColumn>[
                  GridColumn(
                      width: width * .1,
                      columnName: 'name',
                      label: Container(
                          padding: EdgeInsets.all(16.0),
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Name',
                                  style: TextStyle(
                                      color: ColorConstants.black,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ))),
                  GridColumn(
                      width: width * .1,
                      columnName: 'empId',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.centerLeft,
                          child: Text('Employee ID',
                              style: TextStyle(
                                  color: ColorConstants.black,
                                  fontWeight: FontWeight.bold)))),
                  GridColumn(
                      width: width * .1,
                      columnName: 'userType',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.centerLeft,
                          child: Text('User class',
                              style: TextStyle(
                                  color: ColorConstants.black,
                                  fontWeight: FontWeight.bold)))),
                  GridColumn(
                      width: width * .1,
                      columnName: 'branchId',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Branch ID',
                            style: TextStyle(
                                color: ColorConstants.black,
                                fontWeight: FontWeight.bold),
                          ))),
                  GridColumn(
                      width: width * .1,
                      columnName: 'status',
                      label: Container(
                          padding: EdgeInsets.all(8.0),
                          alignment: Alignment.centerLeft,
                          child: Text('Status',
                              style: TextStyle(
                                  color: ColorConstants.black,
                                  fontWeight: FontWeight.bold)))),
                ],
              ),
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
                  "Note:",
                  style: TextStyle(color: ColorConstants.darkGray),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "All the REB employees are autofetched to this module from HRMS application. Only user class to be assigned by the admin",
                  style: TextStyle(color: ColorConstants.darkGray),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "By default, new REB employees status will be disabled i.e. they cannot access the RM mobile application. Only enabled REB employees could login to the application",
                  style: TextStyle(color: ColorConstants.darkGray),
                ),
                CommonWidget.rowHeight(),
              ],
            )
          ],
        ),
      ),
    );
  }

  List<UserListModel> getUserListData() {
    return [
      UserListModel(
        'Rajkumar',
        001,
        'RM',
        142819,
        'Enabled',
      ),
      UserListModel(
        'Srinath',
        002,
        'CRM',
        142810,
        'Disabled',
      ),
      UserListModel(
        'Hari',
        003,
        'BSM',
        142816,
        'Enabled',
      ),
      UserListModel(
        'Ajay Kumar',
        004,
        'BH',
        142813,
        'Disabled',
      ),
      UserListModel(
        'Srinath',
        005,
        'CROP',
        142814,
        'Enabled',
      ),
      UserListModel(
        'Hari',
        006,
        'WRM',
        142815,
        'Disabled',
      ),
      UserListModel(
        'Rajkumar',
        007,
        'ASM',
        142811,
        'Enabled',
      ),
      UserListModel(
        'Ajay Kumar',
        008,
        'BSM',
        142817,
        'Enabled',
      ),
      UserListModel(
        'Rajkumar',
        009,
        'BM',
        142818,
        'Disabled',
      ),
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the UserList which will be rendered in datagrid.
class UserListModel {
  /// Creates the UserList class with required details.
  UserListModel(
      this.name, this.empId, this.userType, this.branchId, this.status);

  /// Id of an UserList.

  /// Name of an UserList.
  final String name;

  /// Designation of an UserList.
  final int empId;
  final String userType;
  final int branchId;
  final String status;

  /// Salary of an UserList.
}

/// An object to set the UserList collection data source to the datagrid. This
/// is used to map the UserList data to the datagrid widget.
class UserListDataSource extends DataGridSource {
  /// Creates the UserList data source class with required details.
  UserListDataSource({required List<UserListModel> userListData}) {
    _userListData = userListData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'name', value: e.name),
              DataGridCell<int>(columnName: 'empId', value: e.empId),
              DataGridCell<String>(columnName: 'userType', value: e.userType),
              DataGridCell<int>(columnName: 'branchId', value: e.branchId),
              DataGridCell<String>(columnName: 'status', value: e.status),
            ]))
        .toList();
  }

  List<DataGridRow> _userListData = [];

  @override
  List<DataGridRow> get rows => _userListData;

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
            color: ColorConstants.black,
            decoration:
                e.columnName == 'name' ? TextDecoration.underline : null,
          ),
          textAlign: TextAlign.start,
        ),
      );
    }).toList());
  }
}
