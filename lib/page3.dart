import 'package:flutter/material.dart';
import 'package:providerexample/page1.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) => Page1()),
              ),
            );
          },
          child: Text("Page3"),
        ),
      ),
    );
  }
}
