import 'package:flutter/material.dart';

class Day2Expanded extends StatelessWidget {
  const Day2Expanded({Key? key}) : super(key: key);

  final bool isExpanded = true; // Khai báo ở cấp lớp

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: isExpanded
              ? Column(
            children: <Widget>[
              Expanded(
                flex: 10, // Sử dụng 10% màn hình
                child: Container(
                  color: Colors.red,
                ),
              ),
              Expanded(
                flex: 80, // Sử dụng 80% màn hình
                child: Container(
                  color: Colors.green,
                ),
              ),
              Expanded(
                flex: 10, // Sử dụng 10% màn hình
                child: Container(
                  color: Colors.yellow,
                ),
              ),
            ],
          )
              : Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.30,
                color: Colors.red,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.30,
                color: Colors.green,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.30,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
