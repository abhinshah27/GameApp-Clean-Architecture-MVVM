import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_screenshot_slider_view_model_event.dart';
part 'game_screenshot_slider_view_model_state.dart';
part 'game_screenshot_slider_view_model_bloc.freezed.dart';


// Bloc to handle game details Screenshots slider selection
class GameScreenshotSliderViewModelBloc
    extends Bloc<GameScreenshotSliderViewModelEvent, GameScreenshotSliderViewModelState> {
  GameScreenshotSliderViewModelBloc() : super(const GameScreenshotSliderViewModelState.selected(selectedIndex: 0)) {
    on<GameScreenshotSliderViewModelEvent>((event, emit) {
      event.map(changeImage: (event) => _onChangeImage(event, emit));
    });
  }
}

void _onChangeImage(_ChangeImage event, Emitter<GameScreenshotSliderViewModelState> emit) async {
  emit(GameScreenshotSliderViewModelState.selected(selectedIndex: event.index));
}
