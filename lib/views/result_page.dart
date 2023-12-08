import 'package:ai_hackathon/widgets/footer.dart';
import 'package:ai_hackathon/widgets/header.dart';

import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
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
            Text('백도어 탐지 결과',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 50,
                    fontFamily: 'PretendardBold')),
            // Description
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: RichText(
                text: TextSpan(
                  text: '탐지 결과 ',
                  children: <TextSpan>[
                    TextSpan(text: '98%', style: TextStyle(color: Colors.red)),
                    TextSpan(text: ' 백도어가 존재합니다.'),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text('샘플 데이터 결과를 보여드릴게요.')),
            // DataSet
            Container(
              width: 600,
              height: 400,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    width: 200,
                    height: 220,
                    child: Column(
                      children: [
                        Image.asset('images/image1.png'),
                        Text('정상 인식 데이터'),
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 220,
                    child: Column(
                      children: [
                        Image.asset('images/image2.png'),
                        Text('오동작 데이터'),
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 220,
                    child: Column(
                      children: [
                        Image.asset('images/image3.png'),
                        Text('오동작 데이터'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Action Button
            OutlinedButton(
              onPressed: () {},
              child: Text(
                  '백도어 제거 시작하기'), // TODO: isCleaned ? '클린 모델 다운로드' : '백도어 제거 시작하기'
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
