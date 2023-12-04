import 'package:get/get.dart';

import '../services/api_service.dart';
import '../viewmodels/index_viewmodel.dart';
import '../viewmodels/result_viewmodel.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<ApiService>(ApiService(), permanent: true);

    Get.lazyPut<IndexViewModel>(() => IndexViewModel());
    Get.lazyPut<ResultViewModel>(() => ResultViewModel());
  }
}
