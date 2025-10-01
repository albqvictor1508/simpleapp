import 'package:flutter/material.dart';

class User {
  final String id;
  final String name;
  final String email;
  final String avatar;
  final int firstNote;
  final int secondNote;
  double get average => firstNote + secondNote / 2;

  User(this.name, this.avatar, this.email, this.id, this.firstNote, this.secondNote);
}

class ListItemData {
  final String name;
  final String avatar;
  final bool selected;
  final int id;

  const ListItemData({
    required this.name,
    required this.avatar,
    this.selected = false,
    required this.id,
  });
}

class ListItem extends StatelessWidget {
  final ListItemData data;
  final VoidCallback onDelete;
  final VoidCallback onTap;

  const ListItem({
    super.key,
    required this.data,
    required this.onDelete,
    required this.onTap,
  });

  @override
  Widget build(BuildContext ctx) {
    //InkWell torna clicável, dando feedback visual
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: Colors.grey),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                    child: Image.asset(data.avatar, width: 32.0, height: 32.0),
                  ),
                  const SizedBox(width: 16.0),
                  Text(data.name, style: const TextStyle(fontSize: 18.0)),
                ],
              ),

              GestureDetector(
                onTap: (onDelete),
                child: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
