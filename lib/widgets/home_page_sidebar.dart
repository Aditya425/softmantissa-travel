import 'package:flutter/material.dart';
import 'package:travel/screens/travel_status.dart';
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
          onPressed: () {

          },
        ),
        ListTileSidebar(
          iconData: Icons.person,
          text: "My Profile",
          onPressed: () {
            Navigator.pushNamed(context, TravelStatus.id);
          },
        ),
        ListTileSidebar(
          iconData: Icons.logout,
          text: "Logout",
          onPressed: () {},
        )
      ],
    );
  }

}
