import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/theme/app_colors.dart';
import 'package:game_app_architecture_mvvm/core/widgets/hybrid_nework_image.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/entity/game_details_entity.dart';
import 'package:game_app_architecture_mvvm/features/game_details/presentation/view_models/game_screenshot_slider/game_screenshot_slider_view_model_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameDetailsScreenshotsView extends StatelessWidget {
  const GameDetailsScreenshotsView({super.key, required this.screenShots});

  final List<ScreenshotEntity> screenShots;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameScreenshotSliderViewModelBloc, GameScreenshotSliderViewModelState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
                aspectRatio: 16 / 9,
                child: HybridNetworkImage.network(
                  screenShots[state.selectedIndex].image,
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  itemCount: screenShots.length,
                  itemBuilder: (context, index) {
                    return _ScreenShotItemView(
                      imageUrl: screenShots[index].image,
                      index: index,
                      selectedIndex: state.selectedIndex,
                      onTap: () => context
                          .read<GameScreenshotSliderViewModelBloc>()
                          .add(GameScreenshotSliderViewModelEvent.changeImage(index: index)),
                      isLastElement: index == (screenShots.length - 1),
                    );
                  }),
            ),
          ],
        );
      },
    );
  }
}

class _ScreenShotItemView extends StatelessWidget {
  const _ScreenShotItemView({
    required this.index,
    required this.imageUrl,
    required this.isLastElement,
    required this.onTap,
    required this.selectedIndex,
  });

  final int index;
  final int selectedIndex;
  final String imageUrl;
  final bool isLastElement;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: isLastElement ? 0 : 8),
      child: GestureDetector(
        onTap: onTap,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            decoration: BoxDecoration(
                border: selectedIndex == index ? Border.all(color: AppColors.primary, width: 1.5) : null),
            child: HybridNetworkImage.network(imageUrl, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
