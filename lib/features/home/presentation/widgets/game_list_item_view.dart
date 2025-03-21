import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_strings.dart';
import 'package:game_app_architecture_mvvm/core/widgets/hybrid_nework_image.dart';
import 'package:game_app_architecture_mvvm/features/game_details/presentation/pages/game_details_page.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/entity/game_entity/game_entity.dart';
import 'package:game_app_architecture_mvvm/features/home/presentation/view_models/favorite_games/favorite_games_view_model_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/navigation/app_routes.dart';
import '../../../../core/theme/app_colors.dart';

class GameListItemView extends StatelessWidget {
  const GameListItemView(
      {super.key, required this.gameEntity, this.isShowFavoriteIcon = false, this.onFavoriteIconTap});

  final GameEntity gameEntity;
  final bool isShowFavoriteIcon;
  final VoidCallback? onFavoriteIconTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(
            context,
            AppRoutes.gameDetails,
            arguments: GameDetailsPageArguments(
              gameId: gameEntity.id,
              favoriteGamesViewModelBloc: isShowFavoriteIcon ? context.read<FavoriteGamesViewModelBloc>() : null,
            ),
          );
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              color: AppColors.grey,
              child: Row(
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: HybridNetworkImage.network(gameEntity.thumbnail, fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
            ),
            Positioned.fill(child: Container(color: Colors.black26)),
            if (isShowFavoriteIcon)
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(onPressed: onFavoriteIconTap, icon: Icon(Icons.favorite)),
              ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(4),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.secondary.withAlpha(100),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  spacing: 4,
                  children: [
                    Row(
                      spacing: 8,
                      children: [
                        Expanded(
                          child: Text(
                            gameEntity.title,
                            style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14, height: 1.2),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(AppStrings.releaseDate,
                            style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14, height: 1.2)),
                      ],
                    ),
                    Row(
                      spacing: 8,
                      children: [
                        Expanded(
                          child: Row(
                            spacing: 4,
                            children: [
                              Expanded(
                                child: Text(
                                  gameEntity.genre,
                                  style: Theme.of(context).textTheme.labelSmall?.copyWith(height: 1.2),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  gameEntity.releaseDate,
                                  style: Theme.of(context).textTheme.labelSmall?.copyWith(height: 1.2),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
