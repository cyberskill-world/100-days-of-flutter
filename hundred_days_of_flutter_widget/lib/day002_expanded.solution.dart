import 'package:flutter/material.dart';

class Day2Expanded extends StatelessWidget {
  const Day2Expanded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isExpanded =
        true;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: isExpanded
              ? Column(
                  children: <Widget>[
                    Expanded( // luôn được lấp đầy theo tỉ lệ
                      flex: 10, // sử dụng 10 % nàm hình
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 80, // sử dụng 80 % nàm hình
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                    Expanded(
                      flex: 10, // sử dụng 10 % nàm hình
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
                      height: MediaQuery.of(context).size.height *
                          0.30, // ? 30% chiều cao của màn hình (cố định)
                      color: Colors.red,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height *
                          0.30, // ? 30% chiều cao của màn hình
                      color: Colors.green,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height *
                          0.30, // ? 30% chiều cao của màn hình
                      color: Colors.yellow,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
