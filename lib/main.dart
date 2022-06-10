import 'package:cuaca/providers/cuaca_provider.dart';
import 'package:cuaca/screens/cuaca_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CuacaProvider>(
          create: (context) => CuacaProvider(),
        ),
      ],
      child: const MaterialApp(
        home: CuacaScreen(),
      ),
    );
  }
}