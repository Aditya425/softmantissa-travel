import 'package:flutter/material.dart';

class ListTileSidebar extends StatelessWidget {
  final IconData iconData;
  final String text;

  ListTileSidebar({required this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          Icons.directions_car_outlined,
          color: Colors.black,
        ),
        trailing: FlatButton(
          onPressed: () {},
          child: Text(
              "My Rides"
          ),
        )
    );
  }
}