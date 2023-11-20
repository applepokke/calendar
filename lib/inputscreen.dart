

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  InputScreenState createState() => InputScreenState();
}

class InputScreenState extends State<InputScreen> {
  bool _value = false; // ここで状態を管理

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('予定の編集'),
        actions: [
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
            ),
            onPressed: () => {

            },
            child: const Text('保存'),
          ),
        ]
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'タイトルを入力してください',
              ),
              autofocus: true,
            ),
            Row(
              children: [
                Expanded(
                  child: SwitchListTile(
                    title: const Text('終日'),
                    value: _value,
                    onChanged: (bool newValue) {
                      setState(() {
                        _value = newValue;
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 0,
                  color: Colors.black,
                ),
                const Text('開始'),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      DatePicker.showDatePicker(context,
                          showTitleActions: true,
                          minTime: DateTime(2022, 1, 1),
                          maxTime: DateTime(2023, 12, 31),
                          onChanged: (date) {
                            print(date);
                          },
                          onConfirm: (date) {
                            print(date);
                          },
                          currentTime: DateTime.now(),
                          locale: LocaleType.jp
                      );
                    },
                    child: const Text(
                      '日付を選択',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 0,
                  color: Colors.black,
                ),
                const Text('開始'),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      DatePicker.showDatePicker(context,
                          showTitleActions: true,
                          minTime: DateTime(2022, 1, 1),
                          maxTime: DateTime(2023, 12, 31),
                          onChanged: (date) {
                            print(date);
                          },
                          onConfirm: (date) {
                            print(date);
                          },
                          currentTime: DateTime.now(),
                          locale: LocaleType.jp
                      );
                    },
                    child: const Text(
                      '日付を選択',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                )
              ],
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(3),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}