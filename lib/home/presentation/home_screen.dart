import 'package:athlyedge/home/application/cubit/equipment_cubit.dart';
import 'package:athlyedge/home/application/cubit/equipment_state.dart';
import 'package:athlyedge/home/models/equipment_model.dart';
import 'package:athlyedge/home/presentation/equipment_list/equipment_list.dart';
import 'package:athlyedge/utils/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    /// load data from json file
    BlocProvider.of<EquipmentCubit>(context, listen: false).loadEquipmentData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: homeScreenUI(context)),
    );
  }

  Widget homeScreenUI(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/launcher_icon.png",
              width: 200, height: 200),
          const EquipmentList(),
          Expanded(child: Container()),
          actionButton(),
        ],
      ),
    );
  }

  Widget actionButton() {
    /// show / hide loader and show message buttons
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () => context.read<EquipmentCubit>().hideShowLoader(),
          child: Text(
              BlocProvider.of<EquipmentCubit>(context, listen: true)
                      .state
                      .isLoading
                  ? "Hide Loader"
                  : "Show Loader",
              style: Theme.of(context).textTheme.titleSmall),
        ),
        ElevatedButton(
          onPressed: () => context.read<EquipmentCubit>().showMessage(context),
          child: Text("Show Message",
              style: Theme.of(context).textTheme.titleSmall),
        ),
      ],
    );
  }
}
