import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/home.dart';
import 'package:provider_test/number_list_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumberListProvider())
      ],
      child: const MaterialApp(home: Home()),
    );
  }
}
