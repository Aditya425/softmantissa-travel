import 'package:flutter/material.dart';

class ListTileSidebar extends StatelessWidget {
  final IconData iconData;
  final String text;
  final VoidCallback onPressed;

  ListTileSidebar({required this.iconData, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          iconData,
          color: Colors.black,
        ),
        trailing: FlatButton(
          onPressed: onPressed,
          child: Text(
              text
          ),
        )
    );
  }
}