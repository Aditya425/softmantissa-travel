import 'package:flutter/material.dart';
import 'package:travel/widgets/home_page_sidebar.dart';
import 'package:travel/widgets/row_widget.dart';

class HomePage extends StatelessWidget {
  static String id = "HomePage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      drawer: Drawer(
        child: HomePageSideBar(),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  border: Border.all(
                    color: Colors.orange
                  )
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome - Santosh Kumar",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.orange
                  )
                ),
                child: Image.asset("images/banner1.jpeg",
                      fit: BoxFit.fill,),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "My Rides",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 30,
              ),
              RowWidget(
                text1: "Date and time – 30-09-2021",
                text2: "Pick up : 10:30 AM",
              ),
              SizedBox(
                height: 10,
              ),
              RowWidget(
                text1: "Location : Marathalli",
                text2: "Estimated – 12:30 PM",
              ),
              SizedBox(
                height: 10,
              ),
              RowWidget(
                text1: "Employees : 2",
                text2: "Track employee",
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "STATUS : Completed ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
