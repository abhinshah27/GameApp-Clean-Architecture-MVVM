import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/theme/app_colors.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/constants/app_constants.dart';

class GameDetailsLoadingView extends StatelessWidget {
  const GameDetailsLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Shimmer.fromColors(
            baseColor: AppConstants.shimmerBaseColor,
            highlightColor: AppConstants.shimmerHighlightColor,
            child: AspectRatio(aspectRatio: 16 / 9, child: Container(color: AppColors.primary))),
        SizedBox(
          height: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(top: 16, left: 8, right: 8),
              itemBuilder: (context, index) {
                return Shimmer.fromColors(
                  baseColor: AppConstants.shimmerBaseColor,
                  highlightColor: AppConstants.shimmerHighlightColor,
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      color: AppColors.primary,
                      margin: EdgeInsets.only(right: 8),
                    ),
                  ),
                );
              }),
        ),
        Shimmer.fromColors(
          baseColor: AppConstants.shimmerBaseColor,
          highlightColor: AppConstants.shimmerHighlightColor,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            height: MediaQuery.sizeOf(context).height * 0.5,
            width: double.infinity,
            color: AppColors.primary,
          ),
        ),
        Shimmer.fromColors(
          baseColor: AppConstants.shimmerBaseColor,
          highlightColor: AppConstants.shimmerHighlightColor,
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.2,
            width: double.infinity,
            color: AppColors.primary,
          ),
        )
      ],
    );
  }
}
