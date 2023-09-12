import 'package:athlyedge/home/application/cubit/equipment_cubit.dart';
import 'package:athlyedge/home/application/cubit/equipment_state.dart';
import 'package:athlyedge/home/models/equipment_model.dart';
import 'package:athlyedge/utils/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EquipmentListItem extends StatelessWidget {
  final EquipmentModel equipmentModel;

  const EquipmentListItem({super.key, required this.equipmentModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: BlocBuilder<EquipmentCubit, EquipmentState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Equipment image and checkbox ui
              Stack(
                children: [
                  /// Equipment image
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 2,
                          color: state.selectedEquipmentId
                                  .contains(equipmentModel.id)
                              ? Theme.of(context).primaryColor
                              : Theme.of(context).scaffoldBackgroundColor),
                      image: DecorationImage(
                        image: AssetImage(equipmentModel.imageUrl),
                        fit: BoxFit.fill,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),

                  /// Equipment checkbox
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Checkbox(
                      fillColor:
                          state.selectedEquipmentId.contains(equipmentModel.id)
                              ? const MaterialStatePropertyAll(
                                  ColorConstant.scaffoldBackgroundColourDark)
                              : MaterialStatePropertyAll(
                                  Theme.of(context).scaffoldBackgroundColor),
                      side: const BorderSide(
                          color: ColorConstant.scaffoldBackgroundColourDark),
                      value:
                          state.selectedEquipmentId.contains(equipmentModel.id),
                      onChanged: (bool? value) {
                        /// add and remove selected id from list
                        context.read<EquipmentCubit>().addRemoveEquipment(value ?? false, equipmentModel.id);

                        /// store selected id list into shared preference
                        context.read<EquipmentCubit>().saveSelectedEquipment();
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              /// Equipment title
              Text(
                equipmentModel.title,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: Theme.of(context).canvasColor),
              ),
            ],
          );
        },
      ),
    );
  }
}
