import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/provider%20example%202/provider/provider.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int itemCount = Provider.of<Manage>(context).counter;
    print("page rebuild");
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Consumer<Manage>(
            builder: (context, value, child) => Container(
              alignment: Alignment.center,
              height: 300.0,
              child: Text('$itemCount', style: TextStyle(fontSize: 30.0)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Provider.of<Manage>(context, listen: false)
                        .increaseCounter();
                  },
                  child: Text('Add')),
              ElevatedButton(
                  onPressed: () {
                    Provider.of<Manage>(context, listen: false)
                        .decreaseCounter();
                  },
                  child: Text('Delete'))
            ],
          )
        ],
      ),
    );
  }
}
