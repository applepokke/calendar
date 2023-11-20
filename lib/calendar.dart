import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'carousel.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'calendar.freezed.dart';
part 'calendar.g.dart';

@freezed
class CalendarItem with _$CalendarItem {
  const factory CalendarItem({
    required DateTime focusedDay,
    required DateTime selectedDay,
    required DateTime scheduleDay,
    required String scheduleEvent,
    @Default(false) bool showCarousel,
  }) = _CalendarItem;
}

@riverpod
class CalendarItemNotifier extends _$CalendarItemNotifier {
  @override
  void setSelectedDay(DateTime newSelectedDay) {
    state = state.copyWith(selectedDay: newSelectedDay);
  }
  CalendarItem build() {
    // selectedDayにnullを設定して、requiredな引数を満たします。
    return CalendarItem(
        selectedDay: DateTime.now(),
        focusedDay: DateTime.now(),
        scheduleDay: DateTime.now(),
        scheduleEvent: "予定"
    );
  }

  CalendarItem update(CalendarItem Function(CalendarItem state) cb) =>
      state = cb(state);
}

class CalendarPage extends ConsumerStatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  ConsumerState<CalendarPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends ConsumerState<CalendarPage> {
  DateTime _focusedDay = DateTime.now(); // 現在日
  CalendarFormat _calendarFormat = CalendarFormat.month; // 月フォーマット
  DateTime? _selectedDay; // 選択している日付
  List<String> _selectedEvents = [];

  //Map形式で保持　keyが日付　値が文字列
  final sampleMap = {
    DateTime.utc(2023, 11,15): ['firstEvent', 'secondEvent'],
    DateTime.utc(2023, 11,20): ['thirdEvent', 'fourthEvent'],
  };

  final sampleEvents = {
    DateTime.utc(2023, 11,15): ['firstEvent', 'secondEvent'],
    DateTime.utc(2023, 11,20): ['thirdEvent', 'fourthEvent'],
  };

  @override
  Widget build(BuildContext context) {
    final showCarousel = ref.watch(calendarItemNotifierProvider.select((state) => state.showCarousel));
    final selectedDay = ref.watch(calendarItemNotifierProvider.select((state) => state.selectedDay));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendar'),
      ),
      // カレンダーUI実装
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TableCalendar(
                    firstDay: DateTime.utc(2023, 1, 1),
                    lastDay: DateTime.utc(2024, 12, 31),

                    focusedDay: _focusedDay,
                    eventLoader: (date) { // イベントドット処理
                      return sampleMap[date] ?? [];
                    },
                    calendarBuilders: CalendarBuilders(
                      dowBuilder: (_, day) {
                        if (day.weekday == DateTime.sunday) {
                          final text = DateFormat.E().format(day);
                          return Center(
                            child: Text(
                              text,
                              style: const TextStyle(color: Colors.red),
                            ),
                          );
                        }
                        if (day.weekday == DateTime.saturday) {
                          final text = DateFormat.E().format(day);
                          return Center(
                            child: Text(
                              text,
                              style: const TextStyle(color: Colors.blue),
                            ),
                          );
                        }
                        return null;
                      }

                    ),
                    calendarFormat: _calendarFormat, // デフォを月表示に設定
                    onFormatChanged: (format) {  // 「月」「週」変更
                      if (_calendarFormat != format) {
                        setState(() {
                          _calendarFormat = format;
                        });
                      }
                    },
                    // 選択日のアニメーション
                    selectedDayPredicate: (day) {
                      return isSameDay(_selectedDay, day);
                    },
                    // 日付が選択されたときの処理
                    onDaySelected: (selectedDay, focusedDay) {
                      ref.read(calendarItemNotifierProvider.notifier)
                          .update((state) => state.copyWith(showCarousel: !state.showCarousel));
                      ref.watch(calendarItemNotifierProvider.notifier)
                          .update((state) => state.copyWith(selectedDay: selectedDay));
                      setState(() {
                        _focusedDay = focusedDay;
                        _selectedEvents = sampleEvents[selectedDay] ?? [];
                      });
                      // _showModal(context);
                    }

                ),
              ),
              // タップした時表示するリスト
              Expanded(
                child: ListView.builder(
                  itemCount: _selectedEvents.length,
                  itemBuilder: (context, index) {
                    final event = _selectedEvents[index];
                    return Card(
                      child: ListTile(
                        title: Text(event),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          showCarousel ? const Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: OpenCarousel(),
            ),
          ) : Container(),
        ],
      ),
    );
  }
}
