import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_constants.dart';
import 'package:game_app_architecture_mvvm/core/theme/app_colors.dart';
import 'package:game_app_architecture_mvvm/core/utils/logger.dart';
import 'package:game_app_architecture_mvvm/features/game_details/presentation/view_models/game_details/game_details_view_model_bloc.dart';
import 'package:game_app_architecture_mvvm/features/game_details/presentation/view_models/game_details_favorite/game_details_favorite_view_model_cubit.dart';
import 'package:game_app_architecture_mvvm/features/home/presentation/view_models/favorite_games/favorite_games_view_model_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/constants/app_strings.dart';

PreferredSizeWidget getGameDetailsAppBar(GameDetailsViewModelState state, BuildContext context) {
  return AppBar(
    actionsPadding: EdgeInsets.only(right: 12),
    leading: GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => Navigator.pop(context),
      child: Container(
          padding: EdgeInsets.only(left: 12), alignment: Alignment.centerLeft, child: Icon(Icons.arrow_back, size: 24)),
    ),
    leadingWidth: 48,
    titleSpacing: 4,
    title: state.when(
      gameDetailsLoaded: (gameDetailsEntity) {
        return Text(gameDetailsEntity.title);
      },
      gameDetailsFailure: (_, __) => Text(AppStrings.gameDetails),
      gameDetailsLoading: () => Shimmer.fromColors(
        baseColor: AppConstants.shimmerBaseColor,
        highlightColor: AppConstants.shimmerHighlightColor,
        child: Container(color: AppColors.primary, width: 50, height: 16),
      ),
    ),
    actions: state.whenOrNull(
      gameDetailsLoaded: (_) {
        return [
          IconButton(
              onPressed: () => context
                  .read<GameDetailsViewModelBloc>()
                  .add(GameDetailsViewModelEvent.showGameMinimumRequirements(context: context)),
              icon: Icon(Icons.task)),
          BlocBuilder<GameDetailsFavoriteViewModelCubit, bool>(
            builder: (context, isFavorite) {
              logDebug(isFavorite.toString());
              return IconButton(
                  padding: EdgeInsets.zero,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  visualDensity: VisualDensity(horizontal: -4),
                  onPressed: () {
                    state.whenOrNull(gameDetailsLoaded: (gameDetails) {
                      context.read<GameDetailsFavoriteViewModelCubit>().toggleFavorite(
                            gameDetails: gameDetails,
                            favoriteGamesViewModelBloc: context.read<FavoriteGamesViewModelBloc?>() == null
                                ? null
                                : context.read<FavoriteGamesViewModelBloc>(),
                          );
                    });
                  },
                  icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border));
            },
          )
        ];
      },
    ),
  );
}
