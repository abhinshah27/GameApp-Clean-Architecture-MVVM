import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_strings.dart';
import 'package:game_app_architecture_mvvm/core/widgets/request_failure_view.dart';
import 'package:game_app_architecture_mvvm/features/home/presentation/view_models/favorite_games/favorite_games_view_model_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/game_list_item_view.dart';

class FavoriteGamesPage extends StatelessWidget {
  const FavoriteGamesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.favorites),
        titleSpacing: 4,
        leading: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () => Navigator.pop(context),
          child: Container(
              padding: EdgeInsets.only(left: 12),
              alignment: Alignment.centerLeft,
              child: Icon(Icons.arrow_back, size: 24)),
        ),
        leadingWidth: 48,
      ),
      body: BlocBuilder<FavoriteGamesViewModelBloc, FavoriteGamesViewModelState>(
        builder: (context, state) {
          return state.when(
              favoriteGamesLoading: () {
                return Center(child: CircularProgressIndicator());
              },
              favoriteGamesLoaded: (favoriteGames) {
                if (favoriteGames.isEmpty) {
                  return Center(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.emptyDataMessage,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      TextButton(onPressed: () => Navigator.pop(context), child: Text(AppStrings.exploreGames))
                    ],
                  ));
                }

                return ListView.builder(
                  padding: EdgeInsets.all(16),
                  itemCount: favoriteGames.length,
                  itemBuilder: (context, index) => GameListItemView(
                    gameEntity: favoriteGames[index],
                    isShowFavoriteIcon: true,
                    onFavoriteIconTap: () {
                      context
                          .read<FavoriteGamesViewModelBloc>()
                          .add(FavoriteGamesViewModelEvent.removeFavoriteGame(id: favoriteGames[index].id));
                    },
                  ),
                );
              },
              favoriteGamesFailure: (statusCode, message) =>
                  RequestFailureView(statusCode: statusCode, message: message));
        },
      ),
    );
  }
}
