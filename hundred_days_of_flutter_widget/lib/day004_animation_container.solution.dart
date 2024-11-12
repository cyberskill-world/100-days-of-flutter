import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Day4AnimationContainer extends StatefulWidget {
  Day4AnimationContainer({Key? key}) : super(key: key);

  @override
  _Day4AnimationContainerState createState() => _Day4AnimationContainerState();
}

class _Day4AnimationContainerState extends State<Day4AnimationContainer> {
  var isClick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedContainer"),
      ),
      body: SafeArea(
        child: GestureDetector( // ghi nhận sự kiện
          onTap: () {
            setState(() {
              isClick = !isClick;
            });
          },
          child: Center(
            child: AnimatedContainer( // chuyển đổi trạng thái

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
                  ? const Center(
                      child: Text(
                        "Off",
                        style: TextStyle(
                          fontSize: 80,
                          color: Colors.white,
                        ),
                      ),
                    )
                  : const Center(
                      child: Text(
                        "On",
                        style: TextStyle(
                          fontSize: 80,
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
