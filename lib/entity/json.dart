import 'package:freezed_annotation/freezed_annotation.dart';

part 'json.freezed.dart';
part 'json.g.dart';

@freezed
class ServerModel with _$ServerModel {
  const factory ServerModel({
    required String name,
    required String ip,
    required String os,
    required String description,
    required String status,
    required String spec,
    required String created,
    required String grafana,
    required List<ServiceModel> service,
  }) = _ServerModel;

  factory ServerModel.fromJson(Map<String, dynamic> json) =>
      _$ServerModelFromJson(json);
}

@freezed
class ServiceModel with _$ServiceModel {
  const factory ServiceModel({
    required String name,
    required String url,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}
