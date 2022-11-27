import 'package:get/get.dart';

class BranchCategoryController extends GetxController
{
  final selected = "".obs;
  var language = <String>['Yes', 'No'].obs;
  void setSelected(String value){
    selected.value = value;
  }
}