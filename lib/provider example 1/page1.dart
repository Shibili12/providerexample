import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/provider%20example%201/page2.dart';
import 'package:providerexample/provider%20example%201/provider/providerDemo.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: ((context) => Page2()),
                  ),
                );
              },
              child: Text("Page1"),
            ),
            Consumer<ProviderDemo>(
                builder: (context, value, child) => Text(value.test1)),
            ElevatedButton(
                onPressed: () {
                  Provider.of<ProviderDemo>(context, listen: false)
                      .changeValue();
                },
                child: Text("click me"))
          ],
        ),
      ),
    );
  }
}
