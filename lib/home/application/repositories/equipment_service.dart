import 'dart:convert';
import 'package:athlyedge/home/models/equipment_model.dart';
import 'package:flutter/services.dart';

abstract class EquipmentService {
  Future<List<EquipmentModel>> loadInitialData();
}

class EquipmentServiceImpl extends EquipmentService {
  @override
  Future<List<EquipmentModel>> loadInitialData() async {
    try {
      /// get data from json file
      String equipmentData = await rootBundle.loadString("assets/json/equipment_list.json");
      /// convert string into json
      final jsonEquipment = jsonDecode(equipmentData);
      /// convert json from list of Equipment Model class
      return List<EquipmentModel>.from(jsonEquipment.map((model) => EquipmentModel.fromJson(model)));
    } catch(e){
      return [];
    }
  }
}
