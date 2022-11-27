import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../model/drawer_list_model.dart';

class DashboardController extends GetxController{
  var selectedValue = "".obs;

  var isSelected=false.obs;
  var mainSelectedIndex=0.obs;


  final selected = "".obs;
  var language = <String>['English', 'Hindi','Espanol'].obs;
  void setSelected(String value){
    selected.value = value;
  }

  var selectedLValue="".obs;
  void onSelected(String value) {
    selectedLValue.value = value;
    update();
  }
  void selectedColor(bool check)
  {
    isSelected.value=check;
    update();
  }
  void mainSelectedColor(int check)
  {
    mainSelectedIndex.value=check;
    update();
  }
  void mainSelectedValue(String check)
  {
    selectedValue.value=check;
    update();
  }

  RxList listModel = <ListModel>[].obs;
  final _hashMap = RxMap();
  final screenController = Map();
  RxList get listModel1 => listModel;
  var _dropdownValue = "".obs;
  var screenName="".obs;
  RxString _date="".obs;
  RxString get date=>_date;
  RxString get dropdownValue=>_dropdownValue;
  RxMap<dynamic,dynamic> get hashMap => _hashMap;
  // void changeScreen(int pos)
  // {
  //   Map<dynamic,Widget> hash={0:UserClassScreen(),1:ExpendsList()} as Map<dynamic, Widget>;
  //   screenController.addAll(hash);
  //   screenName=screenController[pos];
  //   update();
  // }
  void setDate(String data)
  {
    print(data);
    _date=data as RxString;
  }
  @override
  void onInit() {
    super.onInit();
    addData();
  }
  void addData() {
    Map<dynamic,dynamic> hash={0:false,1:false,2:false,3:false} as Map<dynamic, dynamic>;
    hashMap.addAll(hash);
    var listModel1 = new ListModel(false, "Home");
    var listModel2 = new ListModel(false, "C Management");
    var listModel3 = new ListModel(true, "Master Data");
    var listModel4 = new ListModel(false, "User Management");
    listModel.add(listModel1);
    listModel.add(listModel2);
    listModel.add(listModel3);
    listModel.add(listModel4);
  }
  void updateData(var check,var data,var pos)
  {
    var listModel4 = new ListModel(check, data);
    listModel.add(listModel4);
  }
}