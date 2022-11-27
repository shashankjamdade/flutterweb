import 'package:flutter/material.dart';

import '../shared/constants/colors.dart';
class UserDescription extends StatelessWidget {
  const UserDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
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
    );
  }
}
