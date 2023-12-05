import 'dart:typed_data';

import 'package:ai_hackathon/widgets/footer.dart';
import 'package:ai_hackathon/widgets/header.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Header(),
            // Title
            Text('AI 모델 백도어 탐지 체계',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 50,
                    fontFamily: 'PretendardBold')),
            // Description
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('모델 파일을 업로드하여 백도어 탐지 및 제거를 시작하세요.'),
            ),
            // File Upload Form
            Container(
              width: 600,
              height: 600,
              color: Colors.white,
              child: Column(children: [
                // TabBar
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          elevation: 0, splashFactory: NoSplash.splashFactory),
                      onPressed: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          border: Border(
                            bottom: BorderSide(width: 3, color: Colors.blue),
                          ),
                        ),
                        width: 150,
                        height: 40,
                        child: Center(
                            child: Text(
                          'File',
                          style: TextStyle(color: Colors.blue),
                        )),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          elevation: 0, splashFactory: NoSplash.splashFactory),
                      onPressed: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          border: Border(
                            bottom: BorderSide(width: 3, color: Colors.blue),
                          ),
                        ),
                        width: 150,
                        height: 40,
                        child: Center(
                            child: Text(
                          'Drive',
                          style: TextStyle(color: Colors.blue),
                        )),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          elevation: 0, splashFactory: NoSplash.splashFactory),
                      onPressed: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          border: Border(
                            bottom: BorderSide(width: 3, color: Colors.blue),
                          ),
                        ),
                        width: 150,
                        height: 40,
                        child: Center(
                            child: Text(
                          'URL',
                          style: TextStyle(color: Colors.blue),
                        )),
                      ),
                    ),
                  ],
                ),
                // File Picker with Icon
                Container(
                  padding: EdgeInsets.all(30),
                  child: SvgPicture.asset(
                    'assets/images/file.svg',
                    height: 100,
                    width: 100,
                  ),
                ),
                // TODO: isFile ? file_name : null
                // Action Button
                OutlinedButton(
                  onPressed: () async {
                    FilePickerResult? result =
                        await FilePicker.platform.pickFiles(
                      type: FileType.custom,
                      withData: true,
                      allowedExtensions: ['csv'],
                    );
                    if (result != null && result.files.isNotEmpty) {
                      String fileName = result.files.first.name;
                      Uint8List fileBytes = result.files.first.bytes!;
                      debugPrint(fileName);
                      // TODO: upload to server
                    }
                  },
                  child: Text('파일 선택하기'), // TODO: isFile ? '검사 시작' : '파일 선택하기'
                ),
              ]),
            ),
            Divider(
              height: 10,
              thickness: 1.5,
              color: Colors.grey[100],
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
