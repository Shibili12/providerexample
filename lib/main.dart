import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/page1.dart';
import 'package:providerexample/provider/providerDemo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProviderDemo(),
      child: MaterialApp(
        home: Page1(),
      ),
    );
  }
}
