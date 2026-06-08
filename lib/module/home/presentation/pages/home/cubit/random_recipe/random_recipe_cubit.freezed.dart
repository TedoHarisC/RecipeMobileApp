// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_recipe_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RandomRecipeState {

 BlocStatus get isLoading; List<RecipeEntity> get randomRecipes;// Replace with your actual recipe entity
 Failure? get failure;
/// Create a copy of RandomRecipeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RandomRecipeStateCopyWith<RandomRecipeState> get copyWith => _$RandomRecipeStateCopyWithImpl<RandomRecipeState>(this as RandomRecipeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RandomRecipeState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.randomRecipes, randomRecipes)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(randomRecipes),failure);

@override
String toString() {
  return 'RandomRecipeState(isLoading: $isLoading, randomRecipes: $randomRecipes, failure: $failure)';
}


}

/// @nodoc
abstract mixin class $RandomRecipeStateCopyWith<$Res>  {
  factory $RandomRecipeStateCopyWith(RandomRecipeState value, $Res Function(RandomRecipeState) _then) = _$RandomRecipeStateCopyWithImpl;
@useResult
$Res call({
 BlocStatus isLoading, List<RecipeEntity> randomRecipes, Failure? failure
});




}
/// @nodoc
class _$RandomRecipeStateCopyWithImpl<$Res>
    implements $RandomRecipeStateCopyWith<$Res> {
  _$RandomRecipeStateCopyWithImpl(this._self, this._then);

  final RandomRecipeState _self;
  final $Res Function(RandomRecipeState) _then;

/// Create a copy of RandomRecipeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? randomRecipes = null,Object? failure = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as BlocStatus,randomRecipes: null == randomRecipes ? _self.randomRecipes : randomRecipes // ignore: cast_nullable_to_non_nullable
as List<RecipeEntity>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

}


/// Adds pattern-matching-related methods to [RandomRecipeState].
extension RandomRecipeStatePatterns on RandomRecipeState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RandomRecipeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RandomRecipeState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RandomRecipeState value)  $default,){
final _that = this;
switch (_that) {
case _RandomRecipeState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RandomRecipeState value)?  $default,){
final _that = this;
switch (_that) {
case _RandomRecipeState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( BlocStatus isLoading,  List<RecipeEntity> randomRecipes,  Failure? failure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RandomRecipeState() when $default != null:
return $default(_that.isLoading,_that.randomRecipes,_that.failure);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( BlocStatus isLoading,  List<RecipeEntity> randomRecipes,  Failure? failure)  $default,) {final _that = this;
switch (_that) {
case _RandomRecipeState():
return $default(_that.isLoading,_that.randomRecipes,_that.failure);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( BlocStatus isLoading,  List<RecipeEntity> randomRecipes,  Failure? failure)?  $default,) {final _that = this;
switch (_that) {
case _RandomRecipeState() when $default != null:
return $default(_that.isLoading,_that.randomRecipes,_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class _RandomRecipeState implements RandomRecipeState {
  const _RandomRecipeState({this.isLoading = BlocStatus.initial, final  List<RecipeEntity> randomRecipes = const [], this.failure = null}): _randomRecipes = randomRecipes;
  

@override@JsonKey() final  BlocStatus isLoading;
 final  List<RecipeEntity> _randomRecipes;
@override@JsonKey() List<RecipeEntity> get randomRecipes {
  if (_randomRecipes is EqualUnmodifiableListView) return _randomRecipes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_randomRecipes);
}

// Replace with your actual recipe entity
@override@JsonKey() final  Failure? failure;

/// Create a copy of RandomRecipeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RandomRecipeStateCopyWith<_RandomRecipeState> get copyWith => __$RandomRecipeStateCopyWithImpl<_RandomRecipeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RandomRecipeState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._randomRecipes, _randomRecipes)&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_randomRecipes),failure);

@override
String toString() {
  return 'RandomRecipeState(isLoading: $isLoading, randomRecipes: $randomRecipes, failure: $failure)';
}


}

/// @nodoc
abstract mixin class _$RandomRecipeStateCopyWith<$Res> implements $RandomRecipeStateCopyWith<$Res> {
  factory _$RandomRecipeStateCopyWith(_RandomRecipeState value, $Res Function(_RandomRecipeState) _then) = __$RandomRecipeStateCopyWithImpl;
@override @useResult
$Res call({
 BlocStatus isLoading, List<RecipeEntity> randomRecipes, Failure? failure
});




}
/// @nodoc
class __$RandomRecipeStateCopyWithImpl<$Res>
    implements _$RandomRecipeStateCopyWith<$Res> {
  __$RandomRecipeStateCopyWithImpl(this._self, this._then);

  final _RandomRecipeState _self;
  final $Res Function(_RandomRecipeState) _then;

/// Create a copy of RandomRecipeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? randomRecipes = null,Object? failure = freezed,}) {
  return _then(_RandomRecipeState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as BlocStatus,randomRecipes: null == randomRecipes ? _self._randomRecipes : randomRecipes // ignore: cast_nullable_to_non_nullable
as List<RecipeEntity>,failure: freezed == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}


}

// dart format on
