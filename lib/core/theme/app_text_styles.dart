import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_constants.dart';
import 'package:game_app_architecture_mvvm/core/theme/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static const spaceGrpRegular = TextStyle(
      fontSize: 22,
      fontFamily: AppConstants.appFontFamilySpaceGr,
      height: 1.2,
      fontWeight: FontWeight.w400,
      color: AppColors.primary);

  static const spaceGrpBold = TextStyle(
      fontSize: 22,
      fontFamily: AppConstants.appFontFamilySpaceGr,
      fontWeight: FontWeight.w700,
      height: 1.2,
      color: AppColors.primary);
}
