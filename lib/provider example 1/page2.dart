import 'package:flutter/material.dart';
import 'package:providerexample/provider%20example%201/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) => Page3()),
              ),
            );
          },
          child: Text("Page2"),
        ),
      ),
    );
  }
}
