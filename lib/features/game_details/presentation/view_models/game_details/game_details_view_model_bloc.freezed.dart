// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_details_view_model_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameDetailsViewModelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gameId) getGameDetails,
    required TResult Function(BuildContext context) showGameMinimumRequirements,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gameId)? getGameDetails,
    TResult? Function(BuildContext context)? showGameMinimumRequirements,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId)? getGameDetails,
    TResult Function(BuildContext context)? showGameMinimumRequirements,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGameDetails value) getGameDetails,
    required TResult Function(_ShowGameMinimumRequirements value)
        showGameMinimumRequirements,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetGameDetails value)? getGameDetails,
    TResult? Function(_ShowGameMinimumRequirements value)?
        showGameMinimumRequirements,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGameDetails value)? getGameDetails,
    TResult Function(_ShowGameMinimumRequirements value)?
        showGameMinimumRequirements,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDetailsViewModelEventCopyWith<$Res> {
  factory $GameDetailsViewModelEventCopyWith(GameDetailsViewModelEvent value,
          $Res Function(GameDetailsViewModelEvent) then) =
      _$GameDetailsViewModelEventCopyWithImpl<$Res, GameDetailsViewModelEvent>;
}

/// @nodoc
class _$GameDetailsViewModelEventCopyWithImpl<$Res,
        $Val extends GameDetailsViewModelEvent>
    implements $GameDetailsViewModelEventCopyWith<$Res> {
  _$GameDetailsViewModelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameDetailsViewModelEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetGameDetailsImplCopyWith<$Res> {
  factory _$$GetGameDetailsImplCopyWith(_$GetGameDetailsImpl value,
          $Res Function(_$GetGameDetailsImpl) then) =
      __$$GetGameDetailsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int gameId});
}

/// @nodoc
class __$$GetGameDetailsImplCopyWithImpl<$Res>
    extends _$GameDetailsViewModelEventCopyWithImpl<$Res, _$GetGameDetailsImpl>
    implements _$$GetGameDetailsImplCopyWith<$Res> {
  __$$GetGameDetailsImplCopyWithImpl(
      _$GetGameDetailsImpl _value, $Res Function(_$GetGameDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameDetailsViewModelEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = null,
  }) {
    return _then(_$GetGameDetailsImpl(
      gameId: null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetGameDetailsImpl implements _GetGameDetails {
  const _$GetGameDetailsImpl({required this.gameId});

  @override
  final int gameId;

  @override
  String toString() {
    return 'GameDetailsViewModelEvent.getGameDetails(gameId: $gameId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGameDetailsImpl &&
            (identical(other.gameId, gameId) || other.gameId == gameId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameId);

  /// Create a copy of GameDetailsViewModelEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGameDetailsImplCopyWith<_$GetGameDetailsImpl> get copyWith =>
      __$$GetGameDetailsImplCopyWithImpl<_$GetGameDetailsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gameId) getGameDetails,
    required TResult Function(BuildContext context) showGameMinimumRequirements,
  }) {
    return getGameDetails(gameId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gameId)? getGameDetails,
    TResult? Function(BuildContext context)? showGameMinimumRequirements,
  }) {
    return getGameDetails?.call(gameId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId)? getGameDetails,
    TResult Function(BuildContext context)? showGameMinimumRequirements,
    required TResult orElse(),
  }) {
    if (getGameDetails != null) {
      return getGameDetails(gameId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGameDetails value) getGameDetails,
    required TResult Function(_ShowGameMinimumRequirements value)
        showGameMinimumRequirements,
  }) {
    return getGameDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetGameDetails value)? getGameDetails,
    TResult? Function(_ShowGameMinimumRequirements value)?
        showGameMinimumRequirements,
  }) {
    return getGameDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGameDetails value)? getGameDetails,
    TResult Function(_ShowGameMinimumRequirements value)?
        showGameMinimumRequirements,
    required TResult orElse(),
  }) {
    if (getGameDetails != null) {
      return getGameDetails(this);
    }
    return orElse();
  }
}

abstract class _GetGameDetails implements GameDetailsViewModelEvent {
  const factory _GetGameDetails({required final int gameId}) =
      _$GetGameDetailsImpl;

  int get gameId;

  /// Create a copy of GameDetailsViewModelEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetGameDetailsImplCopyWith<_$GetGameDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowGameMinimumRequirementsImplCopyWith<$Res> {
  factory _$$ShowGameMinimumRequirementsImplCopyWith(
          _$ShowGameMinimumRequirementsImpl value,
          $Res Function(_$ShowGameMinimumRequirementsImpl) then) =
      __$$ShowGameMinimumRequirementsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$ShowGameMinimumRequirementsImplCopyWithImpl<$Res>
    extends _$GameDetailsViewModelEventCopyWithImpl<$Res,
        _$ShowGameMinimumRequirementsImpl>
    implements _$$ShowGameMinimumRequirementsImplCopyWith<$Res> {
  __$$ShowGameMinimumRequirementsImplCopyWithImpl(
      _$ShowGameMinimumRequirementsImpl _value,
      $Res Function(_$ShowGameMinimumRequirementsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameDetailsViewModelEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$ShowGameMinimumRequirementsImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ShowGameMinimumRequirementsImpl
    implements _ShowGameMinimumRequirements {
  const _$ShowGameMinimumRequirementsImpl({required this.context});

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'GameDetailsViewModelEvent.showGameMinimumRequirements(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowGameMinimumRequirementsImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  /// Create a copy of GameDetailsViewModelEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowGameMinimumRequirementsImplCopyWith<_$ShowGameMinimumRequirementsImpl>
      get copyWith => __$$ShowGameMinimumRequirementsImplCopyWithImpl<
          _$ShowGameMinimumRequirementsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gameId) getGameDetails,
    required TResult Function(BuildContext context) showGameMinimumRequirements,
  }) {
    return showGameMinimumRequirements(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gameId)? getGameDetails,
    TResult? Function(BuildContext context)? showGameMinimumRequirements,
  }) {
    return showGameMinimumRequirements?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gameId)? getGameDetails,
    TResult Function(BuildContext context)? showGameMinimumRequirements,
    required TResult orElse(),
  }) {
    if (showGameMinimumRequirements != null) {
      return showGameMinimumRequirements(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGameDetails value) getGameDetails,
    required TResult Function(_ShowGameMinimumRequirements value)
        showGameMinimumRequirements,
  }) {
    return showGameMinimumRequirements(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetGameDetails value)? getGameDetails,
    TResult? Function(_ShowGameMinimumRequirements value)?
        showGameMinimumRequirements,
  }) {
    return showGameMinimumRequirements?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGameDetails value)? getGameDetails,
    TResult Function(_ShowGameMinimumRequirements value)?
        showGameMinimumRequirements,
    required TResult orElse(),
  }) {
    if (showGameMinimumRequirements != null) {
      return showGameMinimumRequirements(this);
    }
    return orElse();
  }
}

abstract class _ShowGameMinimumRequirements
    implements GameDetailsViewModelEvent {
  const factory _ShowGameMinimumRequirements(
          {required final BuildContext context}) =
      _$ShowGameMinimumRequirementsImpl;

  BuildContext get context;

  /// Create a copy of GameDetailsViewModelEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowGameMinimumRequirementsImplCopyWith<_$ShowGameMinimumRequirementsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameDetailsViewModelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameDetailsLoading,
    required TResult Function(GameDetailsEntity gameDetailsEntity)
        gameDetailsLoaded,
    required TResult Function(int statusCode, String message)
        gameDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? gameDetailsLoading,
    TResult? Function(GameDetailsEntity gameDetailsEntity)? gameDetailsLoaded,
    TResult? Function(int statusCode, String message)? gameDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameDetailsLoading,
    TResult Function(GameDetailsEntity gameDetailsEntity)? gameDetailsLoaded,
    TResult Function(int statusCode, String message)? gameDetailsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameDetailsLoading value) gameDetailsLoading,
    required TResult Function(_GameDetailsLoaded value) gameDetailsLoaded,
    required TResult Function(_GameDetailsFailure value) gameDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GameDetailsLoading value)? gameDetailsLoading,
    TResult? Function(_GameDetailsLoaded value)? gameDetailsLoaded,
    TResult? Function(_GameDetailsFailure value)? gameDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameDetailsLoading value)? gameDetailsLoading,
    TResult Function(_GameDetailsLoaded value)? gameDetailsLoaded,
    TResult Function(_GameDetailsFailure value)? gameDetailsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDetailsViewModelStateCopyWith<$Res> {
  factory $GameDetailsViewModelStateCopyWith(GameDetailsViewModelState value,
          $Res Function(GameDetailsViewModelState) then) =
      _$GameDetailsViewModelStateCopyWithImpl<$Res, GameDetailsViewModelState>;
}

/// @nodoc
class _$GameDetailsViewModelStateCopyWithImpl<$Res,
        $Val extends GameDetailsViewModelState>
    implements $GameDetailsViewModelStateCopyWith<$Res> {
  _$GameDetailsViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameDetailsViewModelState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GameDetailsLoadingImplCopyWith<$Res> {
  factory _$$GameDetailsLoadingImplCopyWith(_$GameDetailsLoadingImpl value,
          $Res Function(_$GameDetailsLoadingImpl) then) =
      __$$GameDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GameDetailsLoadingImplCopyWithImpl<$Res>
    extends _$GameDetailsViewModelStateCopyWithImpl<$Res,
        _$GameDetailsLoadingImpl>
    implements _$$GameDetailsLoadingImplCopyWith<$Res> {
  __$$GameDetailsLoadingImplCopyWithImpl(_$GameDetailsLoadingImpl _value,
      $Res Function(_$GameDetailsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameDetailsViewModelState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GameDetailsLoadingImpl implements _GameDetailsLoading {
  const _$GameDetailsLoadingImpl();

  @override
  String toString() {
    return 'GameDetailsViewModelState.gameDetailsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GameDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameDetailsLoading,
    required TResult Function(GameDetailsEntity gameDetailsEntity)
        gameDetailsLoaded,
    required TResult Function(int statusCode, String message)
        gameDetailsFailure,
  }) {
    return gameDetailsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? gameDetailsLoading,
    TResult? Function(GameDetailsEntity gameDetailsEntity)? gameDetailsLoaded,
    TResult? Function(int statusCode, String message)? gameDetailsFailure,
  }) {
    return gameDetailsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameDetailsLoading,
    TResult Function(GameDetailsEntity gameDetailsEntity)? gameDetailsLoaded,
    TResult Function(int statusCode, String message)? gameDetailsFailure,
    required TResult orElse(),
  }) {
    if (gameDetailsLoading != null) {
      return gameDetailsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameDetailsLoading value) gameDetailsLoading,
    required TResult Function(_GameDetailsLoaded value) gameDetailsLoaded,
    required TResult Function(_GameDetailsFailure value) gameDetailsFailure,
  }) {
    return gameDetailsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GameDetailsLoading value)? gameDetailsLoading,
    TResult? Function(_GameDetailsLoaded value)? gameDetailsLoaded,
    TResult? Function(_GameDetailsFailure value)? gameDetailsFailure,
  }) {
    return gameDetailsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameDetailsLoading value)? gameDetailsLoading,
    TResult Function(_GameDetailsLoaded value)? gameDetailsLoaded,
    TResult Function(_GameDetailsFailure value)? gameDetailsFailure,
    required TResult orElse(),
  }) {
    if (gameDetailsLoading != null) {
      return gameDetailsLoading(this);
    }
    return orElse();
  }
}

abstract class _GameDetailsLoading implements GameDetailsViewModelState {
  const factory _GameDetailsLoading() = _$GameDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$GameDetailsLoadedImplCopyWith<$Res> {
  factory _$$GameDetailsLoadedImplCopyWith(_$GameDetailsLoadedImpl value,
          $Res Function(_$GameDetailsLoadedImpl) then) =
      __$$GameDetailsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GameDetailsEntity gameDetailsEntity});
}

/// @nodoc
class __$$GameDetailsLoadedImplCopyWithImpl<$Res>
    extends _$GameDetailsViewModelStateCopyWithImpl<$Res,
        _$GameDetailsLoadedImpl>
    implements _$$GameDetailsLoadedImplCopyWith<$Res> {
  __$$GameDetailsLoadedImplCopyWithImpl(_$GameDetailsLoadedImpl _value,
      $Res Function(_$GameDetailsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameDetailsViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameDetailsEntity = null,
  }) {
    return _then(_$GameDetailsLoadedImpl(
      gameDetailsEntity: null == gameDetailsEntity
          ? _value.gameDetailsEntity
          : gameDetailsEntity // ignore: cast_nullable_to_non_nullable
              as GameDetailsEntity,
    ));
  }
}

/// @nodoc

class _$GameDetailsLoadedImpl implements _GameDetailsLoaded {
  const _$GameDetailsLoadedImpl({required this.gameDetailsEntity});

  @override
  final GameDetailsEntity gameDetailsEntity;

  @override
  String toString() {
    return 'GameDetailsViewModelState.gameDetailsLoaded(gameDetailsEntity: $gameDetailsEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameDetailsLoadedImpl &&
            (identical(other.gameDetailsEntity, gameDetailsEntity) ||
                other.gameDetailsEntity == gameDetailsEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameDetailsEntity);

  /// Create a copy of GameDetailsViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameDetailsLoadedImplCopyWith<_$GameDetailsLoadedImpl> get copyWith =>
      __$$GameDetailsLoadedImplCopyWithImpl<_$GameDetailsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameDetailsLoading,
    required TResult Function(GameDetailsEntity gameDetailsEntity)
        gameDetailsLoaded,
    required TResult Function(int statusCode, String message)
        gameDetailsFailure,
  }) {
    return gameDetailsLoaded(gameDetailsEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? gameDetailsLoading,
    TResult? Function(GameDetailsEntity gameDetailsEntity)? gameDetailsLoaded,
    TResult? Function(int statusCode, String message)? gameDetailsFailure,
  }) {
    return gameDetailsLoaded?.call(gameDetailsEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameDetailsLoading,
    TResult Function(GameDetailsEntity gameDetailsEntity)? gameDetailsLoaded,
    TResult Function(int statusCode, String message)? gameDetailsFailure,
    required TResult orElse(),
  }) {
    if (gameDetailsLoaded != null) {
      return gameDetailsLoaded(gameDetailsEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameDetailsLoading value) gameDetailsLoading,
    required TResult Function(_GameDetailsLoaded value) gameDetailsLoaded,
    required TResult Function(_GameDetailsFailure value) gameDetailsFailure,
  }) {
    return gameDetailsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GameDetailsLoading value)? gameDetailsLoading,
    TResult? Function(_GameDetailsLoaded value)? gameDetailsLoaded,
    TResult? Function(_GameDetailsFailure value)? gameDetailsFailure,
  }) {
    return gameDetailsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameDetailsLoading value)? gameDetailsLoading,
    TResult Function(_GameDetailsLoaded value)? gameDetailsLoaded,
    TResult Function(_GameDetailsFailure value)? gameDetailsFailure,
    required TResult orElse(),
  }) {
    if (gameDetailsLoaded != null) {
      return gameDetailsLoaded(this);
    }
    return orElse();
  }
}

abstract class _GameDetailsLoaded implements GameDetailsViewModelState {
  const factory _GameDetailsLoaded(
          {required final GameDetailsEntity gameDetailsEntity}) =
      _$GameDetailsLoadedImpl;

  GameDetailsEntity get gameDetailsEntity;

  /// Create a copy of GameDetailsViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameDetailsLoadedImplCopyWith<_$GameDetailsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameDetailsFailureImplCopyWith<$Res> {
  factory _$$GameDetailsFailureImplCopyWith(_$GameDetailsFailureImpl value,
          $Res Function(_$GameDetailsFailureImpl) then) =
      __$$GameDetailsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int statusCode, String message});
}

/// @nodoc
class __$$GameDetailsFailureImplCopyWithImpl<$Res>
    extends _$GameDetailsViewModelStateCopyWithImpl<$Res,
        _$GameDetailsFailureImpl>
    implements _$$GameDetailsFailureImplCopyWith<$Res> {
  __$$GameDetailsFailureImplCopyWithImpl(_$GameDetailsFailureImpl _value,
      $Res Function(_$GameDetailsFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameDetailsViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
  }) {
    return _then(_$GameDetailsFailureImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GameDetailsFailureImpl implements _GameDetailsFailure {
  const _$GameDetailsFailureImpl(
      {required this.statusCode, required this.message});

  @override
  final int statusCode;
  @override
  final String message;

  @override
  String toString() {
    return 'GameDetailsViewModelState.gameDetailsFailure(statusCode: $statusCode, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameDetailsFailureImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message);

  /// Create a copy of GameDetailsViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameDetailsFailureImplCopyWith<_$GameDetailsFailureImpl> get copyWith =>
      __$$GameDetailsFailureImplCopyWithImpl<_$GameDetailsFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() gameDetailsLoading,
    required TResult Function(GameDetailsEntity gameDetailsEntity)
        gameDetailsLoaded,
    required TResult Function(int statusCode, String message)
        gameDetailsFailure,
  }) {
    return gameDetailsFailure(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? gameDetailsLoading,
    TResult? Function(GameDetailsEntity gameDetailsEntity)? gameDetailsLoaded,
    TResult? Function(int statusCode, String message)? gameDetailsFailure,
  }) {
    return gameDetailsFailure?.call(statusCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? gameDetailsLoading,
    TResult Function(GameDetailsEntity gameDetailsEntity)? gameDetailsLoaded,
    TResult Function(int statusCode, String message)? gameDetailsFailure,
    required TResult orElse(),
  }) {
    if (gameDetailsFailure != null) {
      return gameDetailsFailure(statusCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GameDetailsLoading value) gameDetailsLoading,
    required TResult Function(_GameDetailsLoaded value) gameDetailsLoaded,
    required TResult Function(_GameDetailsFailure value) gameDetailsFailure,
  }) {
    return gameDetailsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GameDetailsLoading value)? gameDetailsLoading,
    TResult? Function(_GameDetailsLoaded value)? gameDetailsLoaded,
    TResult? Function(_GameDetailsFailure value)? gameDetailsFailure,
  }) {
    return gameDetailsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GameDetailsLoading value)? gameDetailsLoading,
    TResult Function(_GameDetailsLoaded value)? gameDetailsLoaded,
    TResult Function(_GameDetailsFailure value)? gameDetailsFailure,
    required TResult orElse(),
  }) {
    if (gameDetailsFailure != null) {
      return gameDetailsFailure(this);
    }
    return orElse();
  }
}

abstract class _GameDetailsFailure implements GameDetailsViewModelState {
  const factory _GameDetailsFailure(
      {required final int statusCode,
      required final String message}) = _$GameDetailsFailureImpl;

  int get statusCode;
  String get message;

  /// Create a copy of GameDetailsViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameDetailsFailureImplCopyWith<_$GameDetailsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
