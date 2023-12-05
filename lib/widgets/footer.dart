import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: TextButton(
        onPressed: () {
          Get.toNamed('/result');
        },
        child: Text('About us'),
      ),
    );
  }
}
