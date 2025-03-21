import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_strings.dart';
import 'package:game_app_architecture_mvvm/core/theme/app_text_styles.dart';

class RequestFailureView extends StatelessWidget {
  const RequestFailureView({super.key, required this.statusCode, required this.message, this.onRetry});

  final int statusCode;
  final String message;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(message, style: AppTextStyles.spaceGrpRegular),
          if (onRetry != null)
            TextButton(
              onPressed: onRetry,
              child: Text(AppStrings.tryAgain),
            )
        ],
      ),
    );
  }
}
