import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:homelab_dashboard/entity/json.dart';

Future<List<ServerModel>> getServerList() async {
  String jsonString =
      await rootBundle.loadString('assets/introduceServer.json');
  final Map<String, dynamic> jsonFile = json.decode(jsonString);
  return jsonFile.values.map((entry) => ServerModel.fromJson(entry)).toList();
}
