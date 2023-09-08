import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/provider%20example%202/provider/provider.dart';
import 'package:providerexample/provider%20example%202/secondpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: Manage())],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int itemCount = Provider.of<Manage>(context).counter;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.forward),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return SecondPage();
          }));
        },
      ),
      body: Column(
        children: [
          Consumer(
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
