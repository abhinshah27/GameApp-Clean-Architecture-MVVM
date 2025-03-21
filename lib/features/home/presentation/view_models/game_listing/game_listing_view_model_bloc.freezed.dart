// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_listing_view_model_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameListingViewModelEvent {
  GameSortBy get sortBy => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSortBy sortBy) getGames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameSortBy sortBy)? getGames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSortBy sortBy)? getGames,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGames value) getGames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetGames value)? getGames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGames value)? getGames,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GameListingViewModelEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameListingViewModelEventCopyWith<GameListingViewModelEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameListingViewModelEventCopyWith<$Res> {
  factory $GameListingViewModelEventCopyWith(GameListingViewModelEvent value,
          $Res Function(GameListingViewModelEvent) then) =
      _$GameListingViewModelEventCopyWithImpl<$Res, GameListingViewModelEvent>;
  @useResult
  $Res call({GameSortBy sortBy});
}

/// @nodoc
class _$GameListingViewModelEventCopyWithImpl<$Res,
        $Val extends GameListingViewModelEvent>
    implements $GameListingViewModelEventCopyWith<$Res> {
  _$GameListingViewModelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameListingViewModelEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortBy = null,
  }) {
    return _then(_value.copyWith(
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as GameSortBy,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetGamesImplCopyWith<$Res>
    implements $GameListingViewModelEventCopyWith<$Res> {
  factory _$$GetGamesImplCopyWith(
          _$GetGamesImpl value, $Res Function(_$GetGamesImpl) then) =
      __$$GetGamesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GameSortBy sortBy});
}

/// @nodoc
class __$$GetGamesImplCopyWithImpl<$Res>
    extends _$GameListingViewModelEventCopyWithImpl<$Res, _$GetGamesImpl>
    implements _$$GetGamesImplCopyWith<$Res> {
  __$$GetGamesImplCopyWithImpl(
      _$GetGamesImpl _value, $Res Function(_$GetGamesImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameListingViewModelEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortBy = null,
  }) {
    return _then(_$GetGamesImpl(
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as GameSortBy,
    ));
  }
}

/// @nodoc

class _$GetGamesImpl implements _GetGames {
  const _$GetGamesImpl({required this.sortBy});

  @override
  final GameSortBy sortBy;

  @override
  String toString() {
    return 'GameListingViewModelEvent.getGames(sortBy: $sortBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGamesImpl &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortBy);

  /// Create a copy of GameListingViewModelEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGamesImplCopyWith<_$GetGamesImpl> get copyWith =>
      __$$GetGamesImplCopyWithImpl<_$GetGamesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSortBy sortBy) getGames,
  }) {
    return getGames(sortBy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameSortBy sortBy)? getGames,
  }) {
    return getGames?.call(sortBy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSortBy sortBy)? getGames,
    required TResult orElse(),
  }) {
    if (getGames != null) {
      return getGames(sortBy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGames value) getGames,
  }) {
    return getGames(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetGames value)? getGames,
  }) {
    return getGames?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGames value)? getGames,
    required TResult orElse(),
  }) {
    if (getGames != null) {
      return getGames(this);
    }
    return orElse();
  }
}

abstract class _GetGames implements GameListingViewModelEvent {
  const factory _GetGames({required final GameSortBy sortBy}) = _$GetGamesImpl;

  @override
  GameSortBy get sortBy;

  /// Create a copy of GameListingViewModelEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetGamesImplCopyWith<_$GetGamesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameListingViewModelState {
  GameSortBy get selectedSorting => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSortBy selectedSorting) loading,
    required TResult Function(
            List<GameEntity> games, GameSortBy selectedSorting)
        loaded,
    required TResult Function(
            int statusCode, String message, GameSortBy selectedSorting)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameSortBy selectedSorting)? loading,
    TResult? Function(List<GameEntity> games, GameSortBy selectedSorting)?
        loaded,
    TResult? Function(
            int statusCode, String message, GameSortBy selectedSorting)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSortBy selectedSorting)? loading,
    TResult Function(List<GameEntity> games, GameSortBy selectedSorting)?
        loaded,
    TResult Function(
            int statusCode, String message, GameSortBy selectedSorting)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GameListingViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameListingViewModelStateCopyWith<GameListingViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameListingViewModelStateCopyWith<$Res> {
  factory $GameListingViewModelStateCopyWith(GameListingViewModelState value,
          $Res Function(GameListingViewModelState) then) =
      _$GameListingViewModelStateCopyWithImpl<$Res, GameListingViewModelState>;
  @useResult
  $Res call({GameSortBy selectedSorting});
}

/// @nodoc
class _$GameListingViewModelStateCopyWithImpl<$Res,
        $Val extends GameListingViewModelState>
    implements $GameListingViewModelStateCopyWith<$Res> {
  _$GameListingViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameListingViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSorting = null,
  }) {
    return _then(_value.copyWith(
      selectedSorting: null == selectedSorting
          ? _value.selectedSorting
          : selectedSorting // ignore: cast_nullable_to_non_nullable
              as GameSortBy,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $GameListingViewModelStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GameSortBy selectedSorting});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$GameListingViewModelStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameListingViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSorting = null,
  }) {
    return _then(_$LoadingImpl(
      selectedSorting: null == selectedSorting
          ? _value.selectedSorting
          : selectedSorting // ignore: cast_nullable_to_non_nullable
              as GameSortBy,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl({required this.selectedSorting});

  @override
  final GameSortBy selectedSorting;

  @override
  String toString() {
    return 'GameListingViewModelState.loading(selectedSorting: $selectedSorting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.selectedSorting, selectedSorting) ||
                other.selectedSorting == selectedSorting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedSorting);

  /// Create a copy of GameListingViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSortBy selectedSorting) loading,
    required TResult Function(
            List<GameEntity> games, GameSortBy selectedSorting)
        loaded,
    required TResult Function(
            int statusCode, String message, GameSortBy selectedSorting)
        failure,
  }) {
    return loading(selectedSorting);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameSortBy selectedSorting)? loading,
    TResult? Function(List<GameEntity> games, GameSortBy selectedSorting)?
        loaded,
    TResult? Function(
            int statusCode, String message, GameSortBy selectedSorting)?
        failure,
  }) {
    return loading?.call(selectedSorting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSortBy selectedSorting)? loading,
    TResult Function(List<GameEntity> games, GameSortBy selectedSorting)?
        loaded,
    TResult Function(
            int statusCode, String message, GameSortBy selectedSorting)?
        failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(selectedSorting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GameListingViewModelState {
  const factory _Loading({required final GameSortBy selectedSorting}) =
      _$LoadingImpl;

  @override
  GameSortBy get selectedSorting;

  /// Create a copy of GameListingViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $GameListingViewModelStateCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GameEntity> games, GameSortBy selectedSorting});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$GameListingViewModelStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameListingViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
    Object? selectedSorting = null,
  }) {
    return _then(_$LoadedImpl(
      games: null == games
          ? _value._games
          : games // ignore: cast_nullable_to_non_nullable
              as List<GameEntity>,
      selectedSorting: null == selectedSorting
          ? _value.selectedSorting
          : selectedSorting // ignore: cast_nullable_to_non_nullable
              as GameSortBy,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(
      {required final List<GameEntity> games, required this.selectedSorting})
      : _games = games;

  final List<GameEntity> _games;
  @override
  List<GameEntity> get games {
    if (_games is EqualUnmodifiableListView) return _games;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_games);
  }

  @override
  final GameSortBy selectedSorting;

  @override
  String toString() {
    return 'GameListingViewModelState.loaded(games: $games, selectedSorting: $selectedSorting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._games, _games) &&
            (identical(other.selectedSorting, selectedSorting) ||
                other.selectedSorting == selectedSorting));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_games), selectedSorting);

  /// Create a copy of GameListingViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSortBy selectedSorting) loading,
    required TResult Function(
            List<GameEntity> games, GameSortBy selectedSorting)
        loaded,
    required TResult Function(
            int statusCode, String message, GameSortBy selectedSorting)
        failure,
  }) {
    return loaded(games, selectedSorting);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameSortBy selectedSorting)? loading,
    TResult? Function(List<GameEntity> games, GameSortBy selectedSorting)?
        loaded,
    TResult? Function(
            int statusCode, String message, GameSortBy selectedSorting)?
        failure,
  }) {
    return loaded?.call(games, selectedSorting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSortBy selectedSorting)? loading,
    TResult Function(List<GameEntity> games, GameSortBy selectedSorting)?
        loaded,
    TResult Function(
            int statusCode, String message, GameSortBy selectedSorting)?
        failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(games, selectedSorting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements GameListingViewModelState {
  const factory _Loaded(
      {required final List<GameEntity> games,
      required final GameSortBy selectedSorting}) = _$LoadedImpl;

  List<GameEntity> get games;
  @override
  GameSortBy get selectedSorting;

  /// Create a copy of GameListingViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res>
    implements $GameListingViewModelStateCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int statusCode, String message, GameSortBy selectedSorting});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$GameListingViewModelStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameListingViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? selectedSorting = null,
  }) {
    return _then(_$FailureImpl(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      selectedSorting: null == selectedSorting
          ? _value.selectedSorting
          : selectedSorting // ignore: cast_nullable_to_non_nullable
              as GameSortBy,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(
      {required this.statusCode,
      required this.message,
      required this.selectedSorting});

  @override
  final int statusCode;
  @override
  final String message;
  @override
  final GameSortBy selectedSorting;

  @override
  String toString() {
    return 'GameListingViewModelState.failure(statusCode: $statusCode, message: $message, selectedSorting: $selectedSorting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.selectedSorting, selectedSorting) ||
                other.selectedSorting == selectedSorting));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, statusCode, message, selectedSorting);

  /// Create a copy of GameListingViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSortBy selectedSorting) loading,
    required TResult Function(
            List<GameEntity> games, GameSortBy selectedSorting)
        loaded,
    required TResult Function(
            int statusCode, String message, GameSortBy selectedSorting)
        failure,
  }) {
    return failure(statusCode, message, selectedSorting);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameSortBy selectedSorting)? loading,
    TResult? Function(List<GameEntity> games, GameSortBy selectedSorting)?
        loaded,
    TResult? Function(
            int statusCode, String message, GameSortBy selectedSorting)?
        failure,
  }) {
    return failure?.call(statusCode, message, selectedSorting);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSortBy selectedSorting)? loading,
    TResult Function(List<GameEntity> games, GameSortBy selectedSorting)?
        loaded,
    TResult Function(
            int statusCode, String message, GameSortBy selectedSorting)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(statusCode, message, selectedSorting);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements GameListingViewModelState {
  const factory _Failure(
      {required final int statusCode,
      required final String message,
      required final GameSortBy selectedSorting}) = _$FailureImpl;

  int get statusCode;
  String get message;
  @override
  GameSortBy get selectedSorting;

  /// Create a copy of GameListingViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
