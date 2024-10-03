import 'package:flutter/material.dart';
import 'package:homelab_dashboard/desginSystem/color.dart';
import 'package:homelab_dashboard/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JihyukLab',
      theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: MainColor.backGroundColor),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
