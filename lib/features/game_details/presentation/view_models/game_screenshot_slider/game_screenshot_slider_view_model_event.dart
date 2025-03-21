part of 'game_screenshot_slider_view_model_bloc.dart';

@freezed
class GameScreenshotSliderViewModelEvent with _$GameScreenshotSliderViewModelEvent {
  const factory GameScreenshotSliderViewModelEvent.changeImage({required int index}) = _ChangeImage;
}
