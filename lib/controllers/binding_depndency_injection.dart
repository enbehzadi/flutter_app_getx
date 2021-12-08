// ignore: file_names
// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'dependency_injection_controller.dart';
// ignore: camel_case_types
class binding_depndency_injection extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut<dependency_injection_controller>(()=>dependency_injection_controller(),tag: "second");       Get.put(dependency_injection_controller(),permanent: true,tag: "first");
    // TODO: implement dependencies
  }
}


