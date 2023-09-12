import 'package:athlyedge/home/application/cubit/equipment_cubit.dart';
import 'package:athlyedge/home/application/cubit/equipment_state.dart';
import 'package:athlyedge/home/presentation/equipment_list_item/equipment_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EquipmentList extends StatelessWidget {
  const EquipmentList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EquipmentCubit, EquipmentState>(
      builder: (context, state) {
        /// Loading state
        if (state.isLoading) {
          return Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor));
        }

        /// Error state
        if (state.error != null && state.error!.isNotEmpty) {
          return Text(state.error!,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Theme.of(context).canvasColor));
        }

        /// Data list empty state
        if (state.equipmentList.isEmpty) {
          return Text("Equipment not found",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Theme.of(context).canvasColor));
        }

        /// Data loaded state
        return Container(
          height: 200,
          width: double.infinity,
          alignment: Alignment.center,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: state.equipmentList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              var equipment = state.equipmentList[index];
              return EquipmentListItem(equipmentModel: equipment);
            },
          ),
        );
      },
    );
  }
}
