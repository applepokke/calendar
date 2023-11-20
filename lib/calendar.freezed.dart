// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarItem {
  DateTime get focusedDay => throw _privateConstructorUsedError;
  DateTime get selectedDay => throw _privateConstructorUsedError;
  DateTime get scheduleDay => throw _privateConstructorUsedError;
  String get scheduleEvent => throw _privateConstructorUsedError;
  bool get showCarousel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarItemCopyWith<CalendarItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarItemCopyWith<$Res> {
  factory $CalendarItemCopyWith(
          CalendarItem value, $Res Function(CalendarItem) then) =
      _$CalendarItemCopyWithImpl<$Res, CalendarItem>;
  @useResult
  $Res call(
      {DateTime focusedDay,
      DateTime selectedDay,
      DateTime scheduleDay,
      String scheduleEvent,
      bool showCarousel});
}

/// @nodoc
class _$CalendarItemCopyWithImpl<$Res, $Val extends CalendarItem>
    implements $CalendarItemCopyWith<$Res> {
  _$CalendarItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusedDay = null,
    Object? selectedDay = null,
    Object? scheduleDay = null,
    Object? scheduleEvent = null,
    Object? showCarousel = null,
  }) {
    return _then(_value.copyWith(
      focusedDay: null == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduleDay: null == scheduleDay
          ? _value.scheduleDay
          : scheduleDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduleEvent: null == scheduleEvent
          ? _value.scheduleEvent
          : scheduleEvent // ignore: cast_nullable_to_non_nullable
              as String,
      showCarousel: null == showCarousel
          ? _value.showCarousel
          : showCarousel // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarItemImplCopyWith<$Res>
    implements $CalendarItemCopyWith<$Res> {
  factory _$$CalendarItemImplCopyWith(
          _$CalendarItemImpl value, $Res Function(_$CalendarItemImpl) then) =
      __$$CalendarItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime focusedDay,
      DateTime selectedDay,
      DateTime scheduleDay,
      String scheduleEvent,
      bool showCarousel});
}

/// @nodoc
class __$$CalendarItemImplCopyWithImpl<$Res>
    extends _$CalendarItemCopyWithImpl<$Res, _$CalendarItemImpl>
    implements _$$CalendarItemImplCopyWith<$Res> {
  __$$CalendarItemImplCopyWithImpl(
      _$CalendarItemImpl _value, $Res Function(_$CalendarItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? focusedDay = null,
    Object? selectedDay = null,
    Object? scheduleDay = null,
    Object? scheduleEvent = null,
    Object? showCarousel = null,
  }) {
    return _then(_$CalendarItemImpl(
      focusedDay: null == focusedDay
          ? _value.focusedDay
          : focusedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      selectedDay: null == selectedDay
          ? _value.selectedDay
          : selectedDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduleDay: null == scheduleDay
          ? _value.scheduleDay
          : scheduleDay // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduleEvent: null == scheduleEvent
          ? _value.scheduleEvent
          : scheduleEvent // ignore: cast_nullable_to_non_nullable
              as String,
      showCarousel: null == showCarousel
          ? _value.showCarousel
          : showCarousel // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CalendarItemImpl implements _CalendarItem {
  const _$CalendarItemImpl(
      {required this.focusedDay,
      required this.selectedDay,
      required this.scheduleDay,
      required this.scheduleEvent,
      this.showCarousel = false});

  @override
  final DateTime focusedDay;
  @override
  final DateTime selectedDay;
  @override
  final DateTime scheduleDay;
  @override
  final String scheduleEvent;
  @override
  @JsonKey()
  final bool showCarousel;

  @override
  String toString() {
    return 'CalendarItem(focusedDay: $focusedDay, selectedDay: $selectedDay, scheduleDay: $scheduleDay, scheduleEvent: $scheduleEvent, showCarousel: $showCarousel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarItemImpl &&
            (identical(other.focusedDay, focusedDay) ||
                other.focusedDay == focusedDay) &&
            (identical(other.selectedDay, selectedDay) ||
                other.selectedDay == selectedDay) &&
            (identical(other.scheduleDay, scheduleDay) ||
                other.scheduleDay == scheduleDay) &&
            (identical(other.scheduleEvent, scheduleEvent) ||
                other.scheduleEvent == scheduleEvent) &&
            (identical(other.showCarousel, showCarousel) ||
                other.showCarousel == showCarousel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, focusedDay, selectedDay,
      scheduleDay, scheduleEvent, showCarousel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarItemImplCopyWith<_$CalendarItemImpl> get copyWith =>
      __$$CalendarItemImplCopyWithImpl<_$CalendarItemImpl>(this, _$identity);
}

abstract class _CalendarItem implements CalendarItem {
  const factory _CalendarItem(
      {required final DateTime focusedDay,
      required final DateTime selectedDay,
      required final DateTime scheduleDay,
      required final String scheduleEvent,
      final bool showCarousel}) = _$CalendarItemImpl;

  @override
  DateTime get focusedDay;
  @override
  DateTime get selectedDay;
  @override
  DateTime get scheduleDay;
  @override
  String get scheduleEvent;
  @override
  bool get showCarousel;
  @override
  @JsonKey(ignore: true)
  _$$CalendarItemImplCopyWith<_$CalendarItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
