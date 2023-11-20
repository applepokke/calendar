import 'package:flutter/material.dart';
import 'calendar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final countProvider = StateProvider((ref) => 0);

void main(){
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Calendar App',
      home: CalendarPage(),
    );
  }
}