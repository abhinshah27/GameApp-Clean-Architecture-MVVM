import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_constants.dart';
import 'package:game_app_architecture_mvvm/core/theme/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class GameListItemLoaderView extends StatelessWidget {
  const GameListItemLoaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppConstants.shimmerBaseColor,
      highlightColor: AppConstants.shimmerHighlightColor,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          margin: EdgeInsets.only(bottom: 8),
          color: AppColors.primary,
        ),
      ),
    );
  }
}
