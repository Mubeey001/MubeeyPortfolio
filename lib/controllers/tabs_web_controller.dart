import 'package:get/get.dart';

class TabWebController extends GetxController {
  var isSelected = false.obs;

  void onSelected() => isSelected.value = true;
  void existSelected() => isSelected.value = false;
}
