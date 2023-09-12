import 'package:athlyedge/home/application/cubit/equipment_cubit.dart';
import 'package:athlyedge/utils/config/app_config.dart';
import 'package:athlyedge/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:athlyedge/home/presentation/home_screen.dart';
import 'package:athlyedge/utils/get_it/get_it_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// initialize singleton using get it
  await getServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EquipmentCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConfig.instance.applicationName,
        theme: MyAppTheme.theme(Brightness.dark),
        themeMode: ThemeMode.dark,
        home: const HomeScreen(),
      ),
    );
  }
}
