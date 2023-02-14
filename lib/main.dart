import 'package:flutter/material.dart';
import 'package:flutter_algoritms/modules/modules.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              final values = [5, 5, 1, 2, 3, 4, 5, 6, 7];
              var sorted = InsertionSortImpl().sort(values: values);
              print(sorted);
            },
            child: const Text('Sort'),
          ),
        ),
      ),
    );
  }
}
