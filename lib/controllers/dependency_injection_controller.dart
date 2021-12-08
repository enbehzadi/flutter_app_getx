import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
// ignore: camel_case_types
class dependency_injection_controller extends GetxController {
  RxInt count = 0.obs;

  increment() {
    count++;
  }
}


