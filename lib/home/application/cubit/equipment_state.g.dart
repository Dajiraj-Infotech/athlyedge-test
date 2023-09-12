// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Equipment _$$_EquipmentFromJson(Map<String, dynamic> json) => _$_Equipment(
      isLoading: json['isLoading'] as bool? ?? false,
      equipmentList: (json['equipmentList'] as List<dynamic>?)
              ?.map((e) => EquipmentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      selectedEquipmentId: (json['selectedEquipmentId'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_EquipmentToJson(_$_Equipment instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'equipmentList': instance.equipmentList,
      'selectedEquipmentId': instance.selectedEquipmentId,
      'error': instance.error,
    };
