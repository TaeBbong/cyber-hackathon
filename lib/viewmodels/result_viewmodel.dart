import 'package:get/get_state_manager/get_state_manager.dart';

class ResultViewModel extends GetxController {
  // String scanResult; ...
  double probability = -1;
  List<String> samples = [];

  void getScanResult() {}
  void cleanModel() async {}
}
