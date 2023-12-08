import 'dart:typed_data';

import 'package:ai_hackathon/viewmodels/result_viewmodel.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class IndexViewModel extends GetxController {
  String fileName = '';
  Uint8List fileBytes = Uint8List(0);
  bool isUploaded = false;
  String uploadedFileName = '';

  void uploadFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      withData: true,
      allowedExtensions: ['csv'],
    );
    if (result != null && result.files.isNotEmpty) {
      fileName = result.files.first.name;
      fileBytes = result.files.first.bytes!;
      print(fileName);
      // TODO: [API] upload to server
      isUploaded = true;
      // uploadedFileName = data.id;
      update();
    }
  }

  void scanFile() async {
    final resultController = Get.find<ResultViewModel>();
    // TODO: [API] scan(uploadedFileName)
    resultController.getScanResult();
  }
}
