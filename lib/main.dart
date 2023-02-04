import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateful_provider/my_state.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => MyState(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'StatefulWidget with Provider'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //
    final myState = Provider.of<MyState>(context);
    //
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(40.0),
            child: ListTile(
              title: Center(
                child:
                    Text('Tap the tiles to increment the respective counters'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: ListTile(
              title: Text('$_counter'),
              subtitle: const Text('Local StatefulWidget counter'),
              onTap: _incrementCounter,
              trailing: const Icon(Icons.add),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: ListTile(
              title: Text('${myState.counter}'),
              subtitle: const Text('App State counter'),
              onTap: myState.incCount,
              trailing: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
