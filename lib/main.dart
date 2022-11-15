import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/counter.dart';
import 'package:listwithprovider/list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<Counter>(
        create: (_) => Counter() ,
        child: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times',
              ),
              Consumer<Counter>(
                builder: (_, counter, __) => Text(
                  '${counter.value}',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              FloatingActionButton(
                onPressed: counter.increment,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
                heroTag: "increment",

              ),
              SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                onPressed: counter.decrement,
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
                heroTag: "decrement",
              ),
              SizedBox(
                width: 10,
              ),
              FloatingActionButton(
                onPressed: () => {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListScreen(title: "Next Screen")))
                },
                tooltip: 'Next Screen',
                child: const Icon(Icons.navigate_next),
                heroTag: "open_list_screen",
          )
        ]));
  }
}
