// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServerModelImpl _$$ServerModelImplFromJson(Map<String, dynamic> json) =>
    _$ServerModelImpl(
      name: json['name'] as String,
      ip: json['ip'] as String,
      os: json['os'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      spec: json['spec'] as String,
      created: json['created'] as String,
      grafana: json['grafana'] as String,
      service: (json['service'] as List<dynamic>)
          .map((e) => ServiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ServerModelImplToJson(_$ServerModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'ip': instance.ip,
      'os': instance.os,
      'description': instance.description,
      'status': instance.status,
      'spec': instance.spec,
      'created': instance.created,
      'grafana': instance.grafana,
      'service': instance.service,
    };

_$ServiceModelImpl _$$ServiceModelImplFromJson(Map<String, dynamic> json) =>
    _$ServiceModelImpl(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$ServiceModelImplToJson(_$ServiceModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
