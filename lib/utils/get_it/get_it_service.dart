import 'package:athlyedge/home/application/cubit/equipment_cubit.dart';
import 'package:athlyedge/home/application/repositories/equipment_service.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.instance;

Future<void> getServices() async {
  var preferences = await SharedPreferences.getInstance();

  /// make singleton instances
  locator
    ..registerSingleton<SharedPreferences>(preferences)
    ..registerSingleton<EquipmentService>(EquipmentServiceImpl())
    ..registerSingleton<EquipmentCubit>(EquipmentCubit());
}