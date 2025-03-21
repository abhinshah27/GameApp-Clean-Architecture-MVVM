// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_screenshot_slider_view_model_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameScreenshotSliderViewModelEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeImage value) changeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeImage value)? changeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeImage value)? changeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GameScreenshotSliderViewModelEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameScreenshotSliderViewModelEventCopyWith<
          GameScreenshotSliderViewModelEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameScreenshotSliderViewModelEventCopyWith<$Res> {
  factory $GameScreenshotSliderViewModelEventCopyWith(
          GameScreenshotSliderViewModelEvent value,
          $Res Function(GameScreenshotSliderViewModelEvent) then) =
      _$GameScreenshotSliderViewModelEventCopyWithImpl<$Res,
          GameScreenshotSliderViewModelEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$GameScreenshotSliderViewModelEventCopyWithImpl<$Res,
        $Val extends GameScreenshotSliderViewModelEvent>
    implements $GameScreenshotSliderViewModelEventCopyWith<$Res> {
  _$GameScreenshotSliderViewModelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameScreenshotSliderViewModelEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeImageImplCopyWith<$Res>
    implements $GameScreenshotSliderViewModelEventCopyWith<$Res> {
  factory _$$ChangeImageImplCopyWith(
          _$ChangeImageImpl value, $Res Function(_$ChangeImageImpl) then) =
      __$$ChangeImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeImageImplCopyWithImpl<$Res>
    extends _$GameScreenshotSliderViewModelEventCopyWithImpl<$Res,
        _$ChangeImageImpl> implements _$$ChangeImageImplCopyWith<$Res> {
  __$$ChangeImageImplCopyWithImpl(
      _$ChangeImageImpl _value, $Res Function(_$ChangeImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameScreenshotSliderViewModelEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeImageImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeImageImpl implements _ChangeImage {
  const _$ChangeImageImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'GameScreenshotSliderViewModelEvent.changeImage(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeImageImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of GameScreenshotSliderViewModelEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeImageImplCopyWith<_$ChangeImageImpl> get copyWith =>
      __$$ChangeImageImplCopyWithImpl<_$ChangeImageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeImage,
  }) {
    return changeImage(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeImage,
  }) {
    return changeImage?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeImage,
    required TResult orElse(),
  }) {
    if (changeImage != null) {
      return changeImage(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeImage value) changeImage,
  }) {
    return changeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeImage value)? changeImage,
  }) {
    return changeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeImage value)? changeImage,
    required TResult orElse(),
  }) {
    if (changeImage != null) {
      return changeImage(this);
    }
    return orElse();
  }
}

abstract class _ChangeImage implements GameScreenshotSliderViewModelEvent {
  const factory _ChangeImage({required final int index}) = _$ChangeImageImpl;

  @override
  int get index;

  /// Create a copy of GameScreenshotSliderViewModelEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeImageImplCopyWith<_$ChangeImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameScreenshotSliderViewModelState {
  int get selectedIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedIndex) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedIndex)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedIndex)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Selected value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Selected value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Selected value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GameScreenshotSliderViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameScreenshotSliderViewModelStateCopyWith<
          GameScreenshotSliderViewModelState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameScreenshotSliderViewModelStateCopyWith<$Res> {
  factory $GameScreenshotSliderViewModelStateCopyWith(
          GameScreenshotSliderViewModelState value,
          $Res Function(GameScreenshotSliderViewModelState) then) =
      _$GameScreenshotSliderViewModelStateCopyWithImpl<$Res,
          GameScreenshotSliderViewModelState>;
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class _$GameScreenshotSliderViewModelStateCopyWithImpl<$Res,
        $Val extends GameScreenshotSliderViewModelState>
    implements $GameScreenshotSliderViewModelStateCopyWith<$Res> {
  _$GameScreenshotSliderViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameScreenshotSliderViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectedImplCopyWith<$Res>
    implements $GameScreenshotSliderViewModelStateCopyWith<$Res> {
  factory _$$SelectedImplCopyWith(
          _$SelectedImpl value, $Res Function(_$SelectedImpl) then) =
      __$$SelectedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class __$$SelectedImplCopyWithImpl<$Res>
    extends _$GameScreenshotSliderViewModelStateCopyWithImpl<$Res,
        _$SelectedImpl> implements _$$SelectedImplCopyWith<$Res> {
  __$$SelectedImplCopyWithImpl(
      _$SelectedImpl _value, $Res Function(_$SelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameScreenshotSliderViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_$SelectedImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectedImpl implements _Selected {
  const _$SelectedImpl({required this.selectedIndex});

  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'GameScreenshotSliderViewModelState.selected(selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex);

  /// Create a copy of GameScreenshotSliderViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedImplCopyWith<_$SelectedImpl> get copyWith =>
      __$$SelectedImplCopyWithImpl<_$SelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedIndex) selected,
  }) {
    return selected(selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedIndex)? selected,
  }) {
    return selected?.call(selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedIndex)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(selectedIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Selected value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Selected value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Selected value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class _Selected implements GameScreenshotSliderViewModelState {
  const factory _Selected({required final int selectedIndex}) = _$SelectedImpl;

  @override
  int get selectedIndex;

  /// Create a copy of GameScreenshotSliderViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedImplCopyWith<_$SelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
