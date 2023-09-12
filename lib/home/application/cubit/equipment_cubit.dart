import 'package:athlyedge/home/application/cubit/equipment_state.dart';
import 'package:athlyedge/home/application/repositories/equipment_service.dart';
import 'package:athlyedge/home/models/equipment_model.dart';
import 'package:athlyedge/utils/constants/preferences_constants.dart';
import 'package:athlyedge/utils/get_it/get_it_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EquipmentCubit extends Cubit<EquipmentState> {
  EquipmentCubit() : super(EquipmentState());

  /// get instance of equipment service
  final EquipmentService _userService = locator<EquipmentService>();

  /// get instance of preferences
  final preferences = locator<SharedPreferences>();

  /// load equipment data from json
  Future<void> loadEquipmentData() async {
    try {
      emit(state.copyWith(isLoading: true));
      /// get selected equipment from shared preference
      final selectedEquipmentId = getSelectedEquipment();

      /// get equipment list from json
      final equipmentList = await _userService.loadInitialData();
      emit(state.copyWith(isLoading: false, equipmentList: equipmentList, selectedEquipmentId: selectedEquipmentId));
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  /// add and remove selected id from list
  void addRemoveEquipment(bool value, String equipmentId) {
    if (value) {
      state.selectedEquipmentId.add(equipmentId);
    } else {
      state.selectedEquipmentId.remove(equipmentId);
    }

    emit(state.copyWith(selectedEquipmentId: state.selectedEquipmentId));
  }

  /// save selected id list into shared preference
  void saveSelectedEquipment() {
    preferences.setStringList(PreferenceConstants.selectedEquipmentPreference, state.selectedEquipmentId);
  }

  /// get selected id list from shared preference
  List<String> getSelectedEquipment() {
    return preferences.getStringList(PreferenceConstants.selectedEquipmentPreference) ?? [];
  }

  /// hide and show loader event
  void hideShowLoader() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  /// show message event
  void showMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Hello Welcome to Equipment Page"),
      ),
    );
  }
}
