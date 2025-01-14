import 'package:flutter/material.dart';
import 'package:homelab_dashboard/desginSystem/font.dart';
import 'package:homelab_dashboard/entity/json.dart';
import 'package:homelab_dashboard/view/spefic_page.dart';
import 'package:homelab_dashboard/viewModel/get_server_viewmodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<ServerModel>>? serverList;

  @override
  void initState() {
    super.initState();
    serverList = getServerList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Text(
          "HOME",
          style: AppTextStyle.headline3,
        ),
        const SizedBox(height: 20),
        Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.7),
                    Colors.blue.withOpacity(0.7),
                    Colors.purple.withOpacity(0.7),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(20),
            height: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Future<JihyukLab>", style: AppTextStyle.highlight),
              ],
            )),
        const SizedBox(height: 30),
        FutureBuilder<List<ServerModel>>(
          future: serverList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var servers = snapshot.data!;
              return Wrap(
                runSpacing: 8,
                children: servers.map((server) {
                  return ServerCard(
                    name: server.name,
                    description: server.spec,
                    isOnline: server.status == "온라인",
                    server: server,
                  );
                }).toList(),
              );
            } else {
              return const Center(child: Text('No servers available'));
            }
          },
        )
      ],
    ));
  }
}

class ServerCard extends StatelessWidget {
  final String name;
  final String description;
  final bool isOnline;
  final ServerModel server;
  const ServerCard({
    super.key,
    required this.name,
    required this.description,
    required this.isOnline,
    required this.server,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return SpeficPage(server: server);
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
                    Text(name, style: AppTextStyle.headline3),
                  ],
                ),
                Text(description, style: AppTextStyle.body3),
              ],
            )));
  }
}
