import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fsfb_rmadmin/common/user_description.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../shared/constants/colors.dart';
import '../../../shared/constants/common.dart';
import '../../../shared/utils/common_widget.dart';
import 'customer _portfolio.dart';

class CustomerPortfolio extends StatefulWidget {
  /// Creates the home page.
  CustomerPortfolio({Key? key}) : super(key: key);

  @override
  _CustomerPortfolioState createState() => _CustomerPortfolioState();
}

class _CustomerPortfolioState extends State<CustomerPortfolio> {
  List<CustemerPortfolio> custemerPortfolios = <CustemerPortfolio>[];

  late CustemerPortfolioDataSource custemerPortfolioDataSource;

  @override
  void initState() {
    super.initState();
    custemerPortfolios = getCustemerPortfolioData();
    custemerPortfolioDataSource =
        CustemerPortfolioDataSource(custemerPortfolioData: custemerPortfolios);
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
            "User class & customer portfolio",
            style: TextStyle(
                fontSize: CommonConstants.largeText32,
                color: ColorConstants.black),
          ),
          CommonWidget.rowHeight(),
          SfDataGrid(
              allowEditing: true,
              selectionMode: SelectionMode.single,
              navigationMode: GridNavigationMode.cell,
              gridLinesVisibility: GridLinesVisibility.both,
              headerGridLinesVisibility: GridLinesVisibility.both,
              source: custemerPortfolioDataSource,
              columns: <GridColumn>[
                GridColumn(
                    width: width * .1,
                    columnName: 'from',
                    label: Container(
                        color: ColorConstants.grey3,
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'From',
                          overflow: TextOverflow.ellipsis,
                        ))),
                GridColumn(
                    width: width * .1,
                    columnName: 'to',
                    label: Container(
                        color: ColorConstants.grey3,
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'To',
                          overflow: TextOverflow.ellipsis,
                        ))),
                GridColumn(
                    columnName: 'userClass',
                    label: Container(
                        color: ColorConstants.grey3,
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'User class',
                          overflow: TextOverflow.ellipsis,
                        ))),
              ],
              stackedHeaderRows: <StackedHeaderRow>[
                StackedHeaderRow(cells: [
                  StackedHeaderCell(
                      columnNames: [
                        'from',
                        'to',
                      ],
                      child: Container(
                          color: ColorConstants.grey3,
                          child: Center(
                              child: Text(
                                  'Customer portfolio value (In lakhs)')))),
                ])
              ]),
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
          CommonWidget.rowHeight(),
          UserDescription(),
          CommonWidget.rowHeight(),
        ],
      ),
    );
  }

  List<CustemerPortfolio> getCustemerPortfolioData() {
    return [
      CustemerPortfolio(10001, 00, 'RM'),
      CustemerPortfolio(
        10002,
        11,
        'BSM',
      ),
      CustemerPortfolio(
        10003,
        22,
        'WRM',
      ),
      CustemerPortfolio(
        10004,
        33,
        'CARM',
      ),
    ];
  }
}

/// Custom business object class which contains properties to hold the detailed
/// information about the CustemerPortfolio which will be rendered in datagrid.
class CustemerPortfolio {
  /// Creates the CustemerPortfolio class with required details.
  CustemerPortfolio(this.from, this.to, this.userClass);

  /// Id of an CustemerPortfolio.
  final double from;
  final double to;

  /// Name of an CustemerPortfolio.
  final String userClass;
}

/// An object to set the CustemerPortfolio collection data source to the datagrid. This
/// is used to map the CustemerPortfolio data to the datagrid widget.
class CustemerPortfolioDataSource extends DataGridSource {
  /// Creates the CustemerPortfolio data source class with required details.
  CustemerPortfolioDataSource(
      {required List<CustemerPortfolio> custemerPortfolioData}) {
    _custemerPortfolioData = custemerPortfolioData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<double>(columnName: 'from', value: e.from),
              DataGridCell<double>(columnName: 'to', value: e.to),
              DataGridCell<String>(columnName: 'userClass', value: e.userClass),
            ]))
        .toList();
  }

  List<DataGridRow> _custemerPortfolioData = [];

  @override
  List<DataGridRow> get rows => _custemerPortfolioData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(left: 15.0),
        child: Text(e.value.toString()),
      );
    }).toList());
  }
}
