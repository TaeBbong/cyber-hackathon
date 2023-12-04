import 'package:ai_hackathon/widgets/footer.dart';
import 'package:ai_hackathon/widgets/header.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child:
            // <Sticky Top Nav Bar> => Column => Top + Expanded(SingleChildScroll)
            // <>
            Expanded(
          child: Scrollbar(
            thumbVisibility: true,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Header(),
                  // Title
                  Text(
                    'Title',
                    style: TextStyle(color: Colors.blue),
                  ),
                  Container(
                    height: 300,
                    color: Colors.red,
                  ),
                  // File Upload Form
                  Footer(),
                ],
              ),
            ),
          ),
        ),
        // <Sticky Bottom>
        // <>
      ),
    );
  }
}
