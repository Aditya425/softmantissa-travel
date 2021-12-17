import 'package:flutter/material.dart';
import 'package:travel/widgets/home_page_sidebar.dart';
import 'package:travel/widgets/row_widget.dart';

class TravelStatus extends StatelessWidget {
  static String id = "TravelStatus";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        title: Text(
          "Travel",
            style: TextStyle(
              color: Colors.black
            ),
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: HomePageSideBar(),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: RowWidget(
                        text1: "Date and time – 30-09-2021",
                        text2: "Pick up : 10:30 AM",
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Expanded(
                      child: RowWidget(
                        text1: "Location : Marathalli",
                        text2: "On going",
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Expanded(
                      child: RowWidget(
                        text1: "Employees : 2",
                        text2: "VIEW IN MAP",
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "STATUS: Active",
                                style: TextStyle(
                                  color: Colors.white
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: RowWidget(
                        text1: "Date and time – 30-09-2021",
                        text2: "Pick up : 10:30 AM",
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Expanded(
                      child: RowWidget(
                        text1: "Location : Marathalli",
                        text2: "On going",
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Expanded(
                      child: RowWidget(
                        text1: "Employees : 2",
                        text2: "VIEW IN MAP",
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.orange,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "STATUS: Cancelled",
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: RowWidget(
                        text1: "Date and time – 30-09-2021",
                        text2: "Pick up : 10:30 AM",
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Expanded(
                      child: RowWidget(
                        text1: "Location : Marathalli",
                        text2: "On going",
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Expanded(
                      child: RowWidget(
                        text1: "Employees : 2",
                        text2: "VIEW IN MAP",
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.lightGreen,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "STATUS: Completed",
                                style: TextStyle(
                                    color: Colors.white
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}