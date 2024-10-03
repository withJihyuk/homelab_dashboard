import 'package:flutter/material.dart';
import 'package:homelab_dashboard/desginSystem/font.dart';
import 'package:homelab_dashboard/view/spefic_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Text(
          "Infrasturcture",
          style: AppTextStyle.headline3,
        ),
        const SizedBox(height: 30),
        Text(
          "// On-premises",
          style: AppTextStyle.body1,
        ),
        const SizedBox(height: 20),
        const Wrap(
          runSpacing: 8,
          children: [
            ServerCard(
                name: "JH-WEB-HOME-PROX01",
                description: "E5-2680v4 x 2 64GB DDR4 1x2TB SSD Hypervisor",
                isOnline: true),
          ],
        ),
        const SizedBox(height: 30),
        Text(
          "// Cloud",
          style: AppTextStyle.body1,
        ),
        const SizedBox(height: 20),
        const Wrap(
          runSpacing: 8,
          children: [
            ServerCard(
                name: "JH-BAC-ORA-L01",
                description: "A1 Flex 4OCPU 24GB RAM 200GB SSD",
                isOnline: true),
            ServerCard(
                name: "JH-ITF-ORA-L02",
                description: "A1 Flex 4OCPU 24GB RAM 200GB SSD",
                isOnline: true),
            ServerCard(
                name: "JH-DB-AWS-L01",
                description: "2vCPU 4GB RAM 80GB SSD",
                isOnline: true),
          ],
        )
      ],
    ));
  }
}

class ServerCard extends StatelessWidget {
  final String name;
  final String description;
  final bool isOnline;
  const ServerCard({
    super.key,
    required this.name,
    required this.description,
    required this.isOnline,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const SpeficPage();
            },
          ));
        },
        child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.circle,
                        color: isOnline ? Colors.green : Colors.red, size: 16),
                    const SizedBox(width: 10),
                    Text(name, style: AppTextStyle.headline3),
                  ],
                ),
                Text(description, style: AppTextStyle.body3),
              ],
            )));
  }
}
