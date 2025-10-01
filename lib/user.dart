import 'package:flutter/material.dart';

class User {
  final String name;
  final String email;
  final String avatar;

  User(this.name, this.avatar, this.email);
}

class ListItemData {
  final String name;
  final String avatar;

  ListItemData(this.name, this.avatar);
}

class ListItem extends StatelessWidget {
  final ListItemData data;

  const ListItem({super.key, required this.data});

  @override
  Widget build(BuildContext ctx) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1.0, color: Colors.grey)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Row(children: [])],
        ),
      ),
    );
  }
}
