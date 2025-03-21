import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/theme/app_colors.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/entity/game_details_entity.dart';
import '../../../../core/constants/app_strings.dart';

class GameDetailsRequirementsBottomSheetView extends StatelessWidget {
  const GameDetailsRequirementsBottomSheetView({super.key, required this.minimumSystemRequirementsEntity});

  final MinimumSystemRequirementsEntity? minimumSystemRequirementsEntity;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(top: 8),
                width: 50,
                padding: EdgeInsets.all(1.5),
                decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(12)),
              ),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppStrings.minimumSystemRequirements,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(height: 1.5)),
                  SizedBox(height: 16),
                  if (minimumSystemRequirementsEntity == null)
                    Text(
                      AppStrings.unavailableDetailsMessage,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(height: 1.5),
                    )
                  else ...[
                    _MinimumRequirementDataTile(
                      title: AppStrings.os,
                      value: minimumSystemRequirementsEntity!.os,
                    ),
                    _MinimumRequirementDataTile(
                      title: AppStrings.processor,
                      value: minimumSystemRequirementsEntity!.processor,
                    ),
                    _MinimumRequirementDataTile(
                      title: AppStrings.memory,
                      value: minimumSystemRequirementsEntity!.memory,
                    ),
                    _MinimumRequirementDataTile(
                      title: AppStrings.graphics,
                      value: minimumSystemRequirementsEntity!.graphics,
                    ),
                    _MinimumRequirementDataTile(
                      title: AppStrings.storage,
                      value: minimumSystemRequirementsEntity!.storage,
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MinimumRequirementDataTile extends StatelessWidget {
  const _MinimumRequirementDataTile({required this.title, required this.value});

  final String title;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text.rich(TextSpan(
        text: title,
        children: [
          TextSpan(
            text: value ?? 'N/A',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(height: 1.5),
          ),
        ],
        style: Theme.of(context).textTheme.labelMedium?.copyWith(height: 1.5),
      )),
    );
  }
}
