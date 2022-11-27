import 'package:flutter/material.dart';
import 'package:fsfb_rmadmin/modules/master_data/branch_category/controller/branch_category_controller.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import '../constants/common.dart';


class DropDownWidget extends StatelessWidget {
  BranchCategoryController branchCategoryController=Get.put(BranchCategoryController());
  @override
  Widget build(BuildContext context) {
      return SingleChildScrollView(
        child: Column(children: [
            Obx( () => Container(
              decoration: BoxDecoration(
                color: ColorConstants.white, //<-- SEE HERE
              ),
              child: DropdownButton(
                iconEnabledColor: ColorConstants.primaryAppColor,
                hint: Text(
                  'Yes'
                ),
                onChanged: (newValue) {
                  branchCategoryController.setSelected(newValue.toString());
                },
                value:branchCategoryController.selected.value==""?null:branchCategoryController.selected.value,
                items: branchCategoryController.language.map((selectedType) {
                  return DropdownMenuItem(
                    child: new Text(
                      selectedType,
                    ),
                    value: selectedType,
                  );
                }).toList(),
              ),
            )
            ),
          ]),
      );
  }
}
