import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  final String text1;
  final String text2;

  RowWidget({required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black
                )
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text1,
                    style: TextStyle(
                        fontSize: 15
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 2,
        ),
        Expanded(
          child: Container(
            height: 34,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        text2,
                        style: TextStyle(
                            fontSize: 10
                        ),
                      ),
                    ],
                  )
                ],
              )
          ),
        )
      ],
    );
  }
}