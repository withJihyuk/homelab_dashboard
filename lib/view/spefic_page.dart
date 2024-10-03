import 'package:flutter/material.dart';
import 'package:homelab_dashboard/desginSystem/font.dart';

class SpeficPage extends StatelessWidget {
  const SpeficPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        padding: const EdgeInsets.all(20),
        children: [Text("엄", style: AppTextStyle.headline3)],
      )),
    );
  }
}
