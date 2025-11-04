import 'package:get/get.dart';

class CertificationController extends GetxController{
  RxList<bool> hovers=[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,  // 14th
    false,  // 15th
    false,  // 16th
    false,  // 17th
  ].obs;
  onHover(int index,bool value){
    hovers[index]=value;
  }
}
