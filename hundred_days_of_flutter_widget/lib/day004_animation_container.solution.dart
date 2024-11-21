import 'package:flutter/material.dart';

class Day4AnimationContainer extends StatefulWidget {
  Day4AnimationContainer({Key? key}) : super(key: key);

  @override
  _Day4AnimationContainerState createState() => _Day4AnimationContainerState();
}

class _Day4AnimationContainerState extends State<Day4AnimationContainer> {
  var isClick = false;

  @override
  Widget build(BuildContext context) {
    // Lấy kích thước chiều cao hoặc chiều rộng màn hình
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth * 0.1; // Font size là 10% chiều rộng màn hình

    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedContainer"),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isClick = !isClick;
            });
          },
          child: Center(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.elasticIn,
              width: isClick ? 200.0 : 200.0,
              height: isClick ? 100.0 : 200.0,
              decoration: BoxDecoration(
                borderRadius: isClick
                    ? BorderRadius.circular(10)
                    : BorderRadius.circular(100),
                color: isClick ? Colors.red : Colors.green,
              ),
              child: isClick
                  ? Center(
                child: Text(
                  "Off",
                  style: TextStyle(
                    fontSize: fontSize, // Dùng font size phản hồi
                    color: Colors.white,
                  ),
                ),
              )
                  : Center(
                child: Text(
                  "On",
                  style: TextStyle(
                    fontSize: fontSize, // Dùng font size phản hồi
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
