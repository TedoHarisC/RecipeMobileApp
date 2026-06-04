// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RecipeEntity {

 String get id; String get title; List<IntegratedEntity> get integrated; String? get category; String? get area; String? get instructions; String? get thumbnailUrl; List<String>? get tags; String? get youtubeUrl; bool get isSaved;
/// Create a copy of RecipeEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeEntityCopyWith<RecipeEntity> get copyWith => _$RecipeEntityCopyWithImpl<RecipeEntity>(this as RecipeEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.integrated, integrated)&&(identical(other.category, category) || other.category == category)&&(identical(other.area, area) || other.area == area)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.youtubeUrl, youtubeUrl) || other.youtubeUrl == youtubeUrl)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(integrated),category,area,instructions,thumbnailUrl,const DeepCollectionEquality().hash(tags),youtubeUrl,isSaved);

@override
String toString() {
  return 'RecipeEntity(id: $id, title: $title, integrated: $integrated, category: $category, area: $area, instructions: $instructions, thumbnailUrl: $thumbnailUrl, tags: $tags, youtubeUrl: $youtubeUrl, isSaved: $isSaved)';
}


}

/// @nodoc
abstract mixin class $RecipeEntityCopyWith<$Res>  {
  factory $RecipeEntityCopyWith(RecipeEntity value, $Res Function(RecipeEntity) _then) = _$RecipeEntityCopyWithImpl;
@useResult
$Res call({
 String id, String title, List<IntegratedEntity> integrated, String? category, String? area, String? instructions, String? thumbnailUrl, List<String>? tags, String? youtubeUrl, bool isSaved
});




}
/// @nodoc
class _$RecipeEntityCopyWithImpl<$Res>
    implements $RecipeEntityCopyWith<$Res> {
  _$RecipeEntityCopyWithImpl(this._self, this._then);

  final RecipeEntity _self;
  final $Res Function(RecipeEntity) _then;

/// Create a copy of RecipeEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? integrated = null,Object? category = freezed,Object? area = freezed,Object? instructions = freezed,Object? thumbnailUrl = freezed,Object? tags = freezed,Object? youtubeUrl = freezed,Object? isSaved = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,integrated: null == integrated ? _self.integrated : integrated // ignore: cast_nullable_to_non_nullable
as List<IntegratedEntity>,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,youtubeUrl: freezed == youtubeUrl ? _self.youtubeUrl : youtubeUrl // ignore: cast_nullable_to_non_nullable
as String?,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeEntity].
extension RecipeEntityPatterns on RecipeEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeEntity value)  $default,){
final _that = this;
switch (_that) {
case _RecipeEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  List<IntegratedEntity> integrated,  String? category,  String? area,  String? instructions,  String? thumbnailUrl,  List<String>? tags,  String? youtubeUrl,  bool isSaved)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeEntity() when $default != null:
return $default(_that.id,_that.title,_that.integrated,_that.category,_that.area,_that.instructions,_that.thumbnailUrl,_that.tags,_that.youtubeUrl,_that.isSaved);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  List<IntegratedEntity> integrated,  String? category,  String? area,  String? instructions,  String? thumbnailUrl,  List<String>? tags,  String? youtubeUrl,  bool isSaved)  $default,) {final _that = this;
switch (_that) {
case _RecipeEntity():
return $default(_that.id,_that.title,_that.integrated,_that.category,_that.area,_that.instructions,_that.thumbnailUrl,_that.tags,_that.youtubeUrl,_that.isSaved);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  List<IntegratedEntity> integrated,  String? category,  String? area,  String? instructions,  String? thumbnailUrl,  List<String>? tags,  String? youtubeUrl,  bool isSaved)?  $default,) {final _that = this;
switch (_that) {
case _RecipeEntity() when $default != null:
return $default(_that.id,_that.title,_that.integrated,_that.category,_that.area,_that.instructions,_that.thumbnailUrl,_that.tags,_that.youtubeUrl,_that.isSaved);case _:
  return null;

}
}

}

/// @nodoc


class _RecipeEntity implements RecipeEntity {
  const _RecipeEntity({required this.id, required this.title, required final  List<IntegratedEntity> integrated, this.category, this.area, this.instructions, this.thumbnailUrl, final  List<String>? tags, this.youtubeUrl, this.isSaved = false}): _integrated = integrated,_tags = tags;
  

@override final  String id;
@override final  String title;
 final  List<IntegratedEntity> _integrated;
@override List<IntegratedEntity> get integrated {
  if (_integrated is EqualUnmodifiableListView) return _integrated;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_integrated);
}

@override final  String? category;
@override final  String? area;
@override final  String? instructions;
@override final  String? thumbnailUrl;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? youtubeUrl;
@override@JsonKey() final  bool isSaved;

/// Create a copy of RecipeEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeEntityCopyWith<_RecipeEntity> get copyWith => __$RecipeEntityCopyWithImpl<_RecipeEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._integrated, _integrated)&&(identical(other.category, category) || other.category == category)&&(identical(other.area, area) || other.area == area)&&(identical(other.instructions, instructions) || other.instructions == instructions)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.youtubeUrl, youtubeUrl) || other.youtubeUrl == youtubeUrl)&&(identical(other.isSaved, isSaved) || other.isSaved == isSaved));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_integrated),category,area,instructions,thumbnailUrl,const DeepCollectionEquality().hash(_tags),youtubeUrl,isSaved);

@override
String toString() {
  return 'RecipeEntity(id: $id, title: $title, integrated: $integrated, category: $category, area: $area, instructions: $instructions, thumbnailUrl: $thumbnailUrl, tags: $tags, youtubeUrl: $youtubeUrl, isSaved: $isSaved)';
}


}

/// @nodoc
abstract mixin class _$RecipeEntityCopyWith<$Res> implements $RecipeEntityCopyWith<$Res> {
  factory _$RecipeEntityCopyWith(_RecipeEntity value, $Res Function(_RecipeEntity) _then) = __$RecipeEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, List<IntegratedEntity> integrated, String? category, String? area, String? instructions, String? thumbnailUrl, List<String>? tags, String? youtubeUrl, bool isSaved
});




}
/// @nodoc
class __$RecipeEntityCopyWithImpl<$Res>
    implements _$RecipeEntityCopyWith<$Res> {
  __$RecipeEntityCopyWithImpl(this._self, this._then);

  final _RecipeEntity _self;
  final $Res Function(_RecipeEntity) _then;

/// Create a copy of RecipeEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? integrated = null,Object? category = freezed,Object? area = freezed,Object? instructions = freezed,Object? thumbnailUrl = freezed,Object? tags = freezed,Object? youtubeUrl = freezed,Object? isSaved = null,}) {
  return _then(_RecipeEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,integrated: null == integrated ? _self._integrated : integrated // ignore: cast_nullable_to_non_nullable
as List<IntegratedEntity>,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,instructions: freezed == instructions ? _self.instructions : instructions // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,youtubeUrl: freezed == youtubeUrl ? _self.youtubeUrl : youtubeUrl // ignore: cast_nullable_to_non_nullable
as String?,isSaved: null == isSaved ? _self.isSaved : isSaved // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$IntegratedEntity {

 String get name; String get measure;
/// Create a copy of IntegratedEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntegratedEntityCopyWith<IntegratedEntity> get copyWith => _$IntegratedEntityCopyWithImpl<IntegratedEntity>(this as IntegratedEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntegratedEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.measure, measure) || other.measure == measure));
}


@override
int get hashCode => Object.hash(runtimeType,name,measure);

@override
String toString() {
  return 'IntegratedEntity(name: $name, measure: $measure)';
}


}

/// @nodoc
abstract mixin class $IntegratedEntityCopyWith<$Res>  {
  factory $IntegratedEntityCopyWith(IntegratedEntity value, $Res Function(IntegratedEntity) _then) = _$IntegratedEntityCopyWithImpl;
@useResult
$Res call({
 String name, String measure
});




}
/// @nodoc
class _$IntegratedEntityCopyWithImpl<$Res>
    implements $IntegratedEntityCopyWith<$Res> {
  _$IntegratedEntityCopyWithImpl(this._self, this._then);

  final IntegratedEntity _self;
  final $Res Function(IntegratedEntity) _then;

/// Create a copy of IntegratedEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? measure = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,measure: null == measure ? _self.measure : measure // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [IntegratedEntity].
extension IntegratedEntityPatterns on IntegratedEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntegratedEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntegratedEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntegratedEntity value)  $default,){
final _that = this;
switch (_that) {
case _IntegratedEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntegratedEntity value)?  $default,){
final _that = this;
switch (_that) {
case _IntegratedEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String measure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntegratedEntity() when $default != null:
return $default(_that.name,_that.measure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String measure)  $default,) {final _that = this;
switch (_that) {
case _IntegratedEntity():
return $default(_that.name,_that.measure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String measure)?  $default,) {final _that = this;
switch (_that) {
case _IntegratedEntity() when $default != null:
return $default(_that.name,_that.measure);case _:
  return null;

}
}

}

/// @nodoc


class _IntegratedEntity implements IntegratedEntity {
  const _IntegratedEntity({required this.name, required this.measure});
  

@override final  String name;
@override final  String measure;

/// Create a copy of IntegratedEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntegratedEntityCopyWith<_IntegratedEntity> get copyWith => __$IntegratedEntityCopyWithImpl<_IntegratedEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntegratedEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.measure, measure) || other.measure == measure));
}


@override
int get hashCode => Object.hash(runtimeType,name,measure);

@override
String toString() {
  return 'IntegratedEntity(name: $name, measure: $measure)';
}


}

/// @nodoc
abstract mixin class _$IntegratedEntityCopyWith<$Res> implements $IntegratedEntityCopyWith<$Res> {
  factory _$IntegratedEntityCopyWith(_IntegratedEntity value, $Res Function(_IntegratedEntity) _then) = __$IntegratedEntityCopyWithImpl;
@override @useResult
$Res call({
 String name, String measure
});




}
/// @nodoc
class __$IntegratedEntityCopyWithImpl<$Res>
    implements _$IntegratedEntityCopyWith<$Res> {
  __$IntegratedEntityCopyWithImpl(this._self, this._then);

  final _IntegratedEntity _self;
  final $Res Function(_IntegratedEntity) _then;

/// Create a copy of IntegratedEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? measure = null,}) {
  return _then(_IntegratedEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,measure: null == measure ? _self.measure : measure // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
