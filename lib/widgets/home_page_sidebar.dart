import 'package:flutter/material.dart';
import 'package:travel/widgets/list_tile_sidebar.dart';

class HomePageSideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          child: Text(""),
        ),
        ListTileSidebar(
          iconData: Icons.directions_car,
          text: "My Rides",
        ),
        ListTileSidebar(
          iconData: Icons.person,
          text: "My Profile",
        ),
        ListTileSidebar(
          iconData: Icons.logout,
          text: "Logout",
        )
      ],
    );
  }

}
