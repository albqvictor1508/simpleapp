import 'package:flutter/material.dart';
import 'package:myapp/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final List<ListItemData> _listItems = [
    ListItemData("Minhas Tarefas", "assets/images/avatar.png"),
    ListItemData("Minhas Tarefas", "assets/images/avatar.png"),
    ListItemData("Minhas Tarefas", "assets/images/avatar.png"),
    ListItemData("Minhas Tarefas", "assets/images/avatar.png"),
    ListItemData("Minhas Tarefas", "assets/images/avatar.png"),
    ListItemData("Minhas Tarefas", "assets/images/avatar.png"),
  ];

  void _changeSalve() {
    "salve";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          spacing: 8.0,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 64.0),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Colors.grey),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("text", style: TextStyle(fontSize: 24.0)),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: TextButton(
                        onPressed: _changeSalve,
                        child: Icon(Icons.access_alarm),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeSalve,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
