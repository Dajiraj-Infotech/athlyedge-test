import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:athlyedge/home/models/equipment_model.dart';
part 'equipment_state.freezed.dart';
part 'equipment_state.g.dart';

@unfreezed
class EquipmentState with _$EquipmentState {
  factory EquipmentState({
    @Default(false) bool isLoading,
    @Default([]) List<EquipmentModel> equipmentList,
    @Default([]) List<String> selectedEquipmentId,
    String? error,
  }) = _Equipment;

  factory EquipmentState.fromJson(Map<String, dynamic> json) =>
      _$EquipmentStateFromJson(json);
}
