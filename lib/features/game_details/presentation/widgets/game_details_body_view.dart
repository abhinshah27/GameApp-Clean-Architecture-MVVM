import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_strings.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/entity/game_details_entity.dart';
import '../../../../core/theme/app_text_styles.dart';
import 'game_details_description_view.dart';
import 'game_details_screenshots_view.dart';
import 'game_meta_data_details_view.dart';

class GameDetailsBodyView extends StatelessWidget {
  const GameDetailsBodyView({super.key, required this.gameDetailsEntity});

  final GameDetailsEntity gameDetailsEntity;

  @override
  Widget build(BuildContext context) {
    return gameDetailsEntity.isAllDataEmpty
        ? Center(
            child: Text(
              AppStrings.emptyDataMessage,
              style: AppTextStyles.spaceGrpRegular,
            ),
          )
        : ListView(
            padding: EdgeInsets.zero,
            children: [
              if (gameDetailsEntity.screenshots?.isNotEmpty ?? false)
                GameDetailsScreenshotsView(screenShots: gameDetailsEntity.screenshots!),
              GameMetaDataDetailsView(
                genre: gameDetailsEntity.genre,
                platform: gameDetailsEntity.platform,
                publisher: gameDetailsEntity.publisher,
                releaseDate: gameDetailsEntity.releaseDate,
              ),
              if (gameDetailsEntity.description != null)
                GameDetailsDescriptionView(description: gameDetailsEntity.description!),
            ],
          );
  }
}
