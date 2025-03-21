import 'dart:ui';
import 'package:game_app_architecture_mvvm/core/base/data_source_result_model.dart';
import '../theme/app_colors.dart';

class AppConstants {
  AppConstants._();

  // Font
  static const String appFontFamilySpaceGr = 'SpaceGrotesk';

  // Network Constants
  static const int defaultErrorCode = 500;
  static const String defaultErrorMessage = 'Something went wrong';
  static const Duration networkRequestTimeoutDuration = Duration(seconds: 10);
  static const int gameListLoaderItemCount = 20;

  // Shimmer Effect
  static const Color shimmerBaseColor = AppColors.secondary;
  static const Color shimmerHighlightColor = AppColors.grey;

  // Text
  static const int largeTextMaxLines = 5;

  // Default Error Model
  static const ErrorResultModel defaultErrorModel = ErrorResultModel(
    statusCode: defaultErrorCode,
    message: defaultErrorMessage,
  );

  // Local Database Keys
  static const String favoriteBox = 'FavoriteBox';
}
