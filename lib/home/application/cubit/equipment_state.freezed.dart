// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'equipment_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EquipmentState _$EquipmentStateFromJson(Map<String, dynamic> json) {
  return _Equipment.fromJson(json);
}

/// @nodoc
mixin _$EquipmentState {
  bool get isLoading => throw _privateConstructorUsedError;
  set isLoading(bool value) => throw _privateConstructorUsedError;
  List<EquipmentModel> get equipmentList => throw _privateConstructorUsedError;
  set equipmentList(List<EquipmentModel> value) =>
      throw _privateConstructorUsedError;
  List<String> get selectedEquipmentId => throw _privateConstructorUsedError;
  set selectedEquipmentId(List<String> value) =>
      throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  set error(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EquipmentStateCopyWith<EquipmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentStateCopyWith<$Res> {
  factory $EquipmentStateCopyWith(
          EquipmentState value, $Res Function(EquipmentState) then) =
      _$EquipmentStateCopyWithImpl<$Res, EquipmentState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<EquipmentModel> equipmentList,
      List<String> selectedEquipmentId,
      String? error});
}

/// @nodoc
class _$EquipmentStateCopyWithImpl<$Res, $Val extends EquipmentState>
    implements $EquipmentStateCopyWith<$Res> {
  _$EquipmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? equipmentList = null,
    Object? selectedEquipmentId = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      equipmentList: null == equipmentList
          ? _value.equipmentList
          : equipmentList // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>,
      selectedEquipmentId: null == selectedEquipmentId
          ? _value.selectedEquipmentId
          : selectedEquipmentId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EquipmentCopyWith<$Res>
    implements $EquipmentStateCopyWith<$Res> {
  factory _$$_EquipmentCopyWith(
          _$_Equipment value, $Res Function(_$_Equipment) then) =
      __$$_EquipmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<EquipmentModel> equipmentList,
      List<String> selectedEquipmentId,
      String? error});
}

/// @nodoc
class __$$_EquipmentCopyWithImpl<$Res>
    extends _$EquipmentStateCopyWithImpl<$Res, _$_Equipment>
    implements _$$_EquipmentCopyWith<$Res> {
  __$$_EquipmentCopyWithImpl(
      _$_Equipment _value, $Res Function(_$_Equipment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? equipmentList = null,
    Object? selectedEquipmentId = null,
    Object? error = freezed,
  }) {
    return _then(_$_Equipment(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      equipmentList: null == equipmentList
          ? _value.equipmentList
          : equipmentList // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>,
      selectedEquipmentId: null == selectedEquipmentId
          ? _value.selectedEquipmentId
          : selectedEquipmentId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Equipment implements _Equipment {
  _$_Equipment(
      {this.isLoading = false,
      this.equipmentList = const [],
      this.selectedEquipmentId = const [],
      this.error});

  factory _$_Equipment.fromJson(Map<String, dynamic> json) =>
      _$$_EquipmentFromJson(json);

  @override
  @JsonKey()
  bool isLoading;
  @override
  @JsonKey()
  List<EquipmentModel> equipmentList;
  @override
  @JsonKey()
  List<String> selectedEquipmentId;
  @override
  String? error;

  @override
  String toString() {
    return 'EquipmentState(isLoading: $isLoading, equipmentList: $equipmentList, selectedEquipmentId: $selectedEquipmentId, error: $error)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EquipmentCopyWith<_$_Equipment> get copyWith =>
      __$$_EquipmentCopyWithImpl<_$_Equipment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EquipmentToJson(
      this,
    );
  }
}

abstract class _Equipment implements EquipmentState {
  factory _Equipment(
      {bool isLoading,
      List<EquipmentModel> equipmentList,
      List<String> selectedEquipmentId,
      String? error}) = _$_Equipment;

  factory _Equipment.fromJson(Map<String, dynamic> json) =
      _$_Equipment.fromJson;

  @override
  bool get isLoading;
  set isLoading(bool value);
  @override
  List<EquipmentModel> get equipmentList;
  set equipmentList(List<EquipmentModel> value);
  @override
  List<String> get selectedEquipmentId;
  set selectedEquipmentId(List<String> value);
  @override
  String? get error;
  set error(String? value);
  @override
  @JsonKey(ignore: true)
  _$$_EquipmentCopyWith<_$_Equipment> get copyWith =>
      throw _privateConstructorUsedError;
}
