import 'package:calendar/inputscreen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'calendar.dart';

class OpenCarousel extends ConsumerWidget {
  const OpenCarousel({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // RiverpodからselectedDayを監視する
    final DateTime? selectedDay = ref.watch(calendarItemNotifierProvider.select((state) => state.selectedDay));

    // DateFormatを使用して日付をフォーマットする
    final String formattedSelectedDay = DateFormat('yyyy-MM-dd').format(selectedDay!);

    return Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 400.0,
          ),
          items: [1, 2, 3].map((i) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: const BoxDecoration(color: Colors.white),
              child:
                Row(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: IconButton(
                          icon: const Icon(Icons.close),
                          iconSize: 24,
                          onPressed: (){
                            ref.read(calendarItemNotifierProvider.notifier)
                                .update((state) => state.copyWith(showCarousel: !state.showCarousel));
                          },
                        ),
                      ),
                    ),

                    Text('$formattedSelectedDay', style: const TextStyle(fontSize: 16.0)
                    ),
                  Spacer(), // 余白を追加してボタンを右側に移動
                  FloatingActionButton(
                    child: Icon(Icons.add), // アイコンを設定
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const InputScreen(), // NewScreen()は遷移先の画面のウィジェット
                        ),
                      );
                    },
                    tooltip: 'Add Event',
                  ),
                  ]
                ),
            );
          }).toList(),
        ),
      );
  }
}