part of 'game_screenshot_slider_view_model_bloc.dart';

@freezed
class GameScreenshotSliderViewModelState with _$GameScreenshotSliderViewModelState {
  const factory GameScreenshotSliderViewModelState.selected({required int selectedIndex}) = _Selected;
}
