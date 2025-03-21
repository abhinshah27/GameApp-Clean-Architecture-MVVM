import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_constants.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_sizes.dart';
import 'package:game_app_architecture_mvvm/core/theme/app_colors.dart';
import 'package:game_app_architecture_mvvm/core/theme/app_text_styles.dart';

class AppThemes {
  AppThemes._();

  static ThemeData get lightTheme {
    return ThemeData(
        fontFamily: AppConstants.appFontFamilySpaceGr,
        primarySwatch: Colors.blue,
        useMaterial3: true,
        primaryColor: AppColors.primary,
        textTheme: TextTheme(
          titleMedium: AppTextStyles.spaceGrpBold,
          titleSmall: AppTextStyles.spaceGrpBold.copyWith(fontSize: 16, height: 1.5, fontWeight: FontWeight.w700),
          bodySmall: AppTextStyles.spaceGrpRegular
              .copyWith(fontSize: 16, height: 1.5, color: AppColors.grey, fontWeight: FontWeight.w400),
          bodyMedium: AppTextStyles.spaceGrpRegular.copyWith(fontSize: 14, height: 1.5, fontWeight: FontWeight.w400),
          labelMedium: AppTextStyles.spaceGrpBold.copyWith(fontSize: 14, height: 1.2, fontWeight: FontWeight.w700),
          labelSmall: AppTextStyles.spaceGrpRegular.copyWith(fontSize: 14, height: 1.2, fontWeight: FontWeight.w400),
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue, backgroundColor: Colors.white),
        scaffoldBackgroundColor: AppColors.scaffoldBackground,
        iconButtonTheme: IconButtonThemeData(style: IconButton.styleFrom(foregroundColor: AppColors.primary)),
        appBarTheme: AppBarTheme(
          centerTitle: false,
          titleTextStyle: AppTextStyles.spaceGrpRegular,
          backgroundColor: AppColors.secondary,
          toolbarHeight: AppSizes.defaultAppBarHeight,
          iconTheme: IconThemeData(color: AppColors.primary),
          titleSpacing: 16,
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(color: AppColors.primary),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              foregroundColor: AppColors.darkBlue,
              textStyle: AppTextStyles.spaceGrpRegular.copyWith(
                fontSize: 16,
                decoration: TextDecoration.underline,
              )),
        ),
        popupMenuTheme: PopupMenuThemeData(
          color: AppColors.secondary,
          labelTextStyle: WidgetStateProperty.resolveWith((state) {
            if (state.contains(WidgetState.selected)) {
              return AppTextStyles.spaceGrpBold.copyWith(fontSize: 16, height: 1.5, color: AppColors.darkBlue);
            } else {
              return AppTextStyles.spaceGrpRegular.copyWith(fontSize: 16, height: 1.5, color: AppColors.primary);
            }
          }),
        ),
        bottomSheetTheme: BottomSheetThemeData(modalBackgroundColor: Colors.transparent));
  }

  ///Expand darkTheme to meet your needs
  static ThemeData get darkTheme => lightTheme;
}
