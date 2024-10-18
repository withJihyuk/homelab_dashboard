import 'package:flutter/material.dart';
import 'package:homelab_dashboard/desginSystem/font.dart';
import 'package:homelab_dashboard/entity/json.dart';

class SpeficPage extends StatelessWidget {
  final ServerModel server;
  const SpeficPage({super.key, required this.server});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TopBar(
            name: server.name,
          ),
          const SizedBox(height: 70),
          const ServerInfoCard()
        ],
      )),
    );
  }
}

class TopBar extends StatelessWidget {
  final String name;
  const TopBar({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        Text(
          name,
          style: AppTextStyle.headline2,
        )
      ],
    );
  }
}

class ServerInfoCard extends StatelessWidget {
  const ServerInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text("JH-WEB-HOME-PROX01", style: AppTextStyle.headline1),
            // Text(
            //   "E5-2680v4 x 2 64GB DDR4 1x2TB SSD Hypervisor",
            //   style: AppTextStyle.body2,
            // ),
            // const SizedBox(
            //   height: 100,
            // ),
            // const ServiceCard()
            Text("아직 준비중이에요 :)", style: AppTextStyle.headline1),
          ],
        ));
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text("Promehteus", style: AppTextStyle.headline2),
        ],
      ),
    );
  }
}
