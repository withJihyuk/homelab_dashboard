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
          ServerInfoCard(server: server)
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
  final ServerModel server;
  const ServerInfoCard({super.key, required this.server});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(server.name, style: AppTextStyle.headline1),
            Text(
              "${server.ip} | ${server.os} | ${server.created}",
              style: AppTextStyle.caption1,
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              server.description,
              style: AppTextStyle.body1,
            ),
            const SizedBox(
              height: 100,
            ),
            ListView.builder(
              padding: const EdgeInsets.only(bottom: 20),
              shrinkWrap: true,
              itemCount: server.service.length,
              itemBuilder: (context, index) {
                return ServiceCard(service: server.service[index]);
              },
            )
          ],
        ));
  }
}

class ServiceCard extends StatelessWidget {
  final ServiceModel service;
  const ServiceCard({
    super.key,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          // TODO: 웹페이지로 이동 구현하기
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Text(service.name, style: AppTextStyle.headline2),
            ],
          ),
        ));
  }
}
