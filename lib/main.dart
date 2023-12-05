import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'bindings/initial_bindings.dart';
import 'views/about_page.dart';
import 'views/index_page.dart';
import 'views/result_page.dart';

void main() {
  runApp(const MainApp());
  WidgetsFlutterBinding.ensureInitialized();
  InitialBinding().dependencies();
  setUrlStrategy(PathUrlStrategy());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AI 백도어 탐지 체계',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Pretendard',
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: IndexPage(),
      initialRoute: '/',
      getPages: [
        GetPage(name: "/", page: () => IndexPage()),
        // TODO: Routing with String id in url
        GetPage(name: "/result", page: () => ResultPage()),
        GetPage(name: "/about", page: () => AboutPage()),
      ],
    );
  }
}
