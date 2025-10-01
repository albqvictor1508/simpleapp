import 'package:flutter/material.dart';
import 'package:simpleapp/user.dart';

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
  List<ListItemData> _listItems = [
    ListItemData(
      name: "Minhas Tarefas",
      avatar: "assets/images/avatar.png",
      id: 1,
    ),
    ListItemData(
      name: "Configurações",
      id: 2,
      avatar: "assets/images/avatar.png",
    ),
    ListItemData(name: "Perfil", id: 3, avatar: "assets/images/avatar.png"),
    ListItemData(
      name: "Notificações",
      id: 4,
      avatar: "assets/images/avatar.png",
    ),
    ListItemData(name: "Ajuda", id: 5, avatar: "assets/images/avatar.png"),
    ListItemData(
      name: "Sobre o App",
      id: 6,
      avatar: "assets/images/avatar.png",
    ),
    ListItemData(name: "Sair", id: 7, avatar: "assets/images/avatar.png"),
    ListItemData(name: "Licenças", id: 8, avatar: "assets/images/avatar.png"),
  ];

  void _deleteItem(ListItemData itemToDelete) {
    setState(() {
      _listItems.removeWhere((item) => item.id == itemToDelete.id);
    });
  }

  void _addItem() {
    int newId = _listItems.isEmpty ? 1 : _listItems.last.id + 1;
    setState(() {
      _listItems.add(
        ListItemData(
          name: "Novo Item $newId",
          avatar: "assets/images/new.png",
          id: newId,
        ),
      );
    });
  }

  void _salve() {
    "salve";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 64.0),
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Lista de Opções",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: _listItems.length,
              itemBuilder: (BuildContext context, int index) {
                final item = _listItems[index];
                return ListItem(
                  data: item,
                  onDelete: () => _deleteItem(item),
                  onTap: () => _salve,
                );
              },
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        tooltip: 'Adicionar Item',
        child: const Icon(Icons.add),
      ),
    );
  }
}
