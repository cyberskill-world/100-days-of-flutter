import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Day5Opacity extends StatefulWidget {
  Day5Opacity({Key? key}) : super(key: key);

  @override
  _Day5OpacityState createState() => _Day5OpacityState();
}

class _Day5OpacityState extends State<Day5Opacity> {
  bool _opacity = true;
  @override
  Widget build(BuildContext context) {
    bool checkAnimation =
        false;

    var withAnimation = AnimatedOpacity(

      duration: const Duration(milliseconds: 1500), // thay đổi trong 1 khoảng thời gian

      opacity: _opacity ? 0.0 : 1.0, // dùng để ẩn/hiện


      child: Center(
        child: Container(
          width: 250,
          height: 250,
          color: Colors.deepPurple,
        ),
      ),
    );

    var withoutAnimation = Opacity( // thay đổi lập tức


      opacity: _opacity ? 0.0 : 1.0,

      child: Center(
        child: Container(
          width: 250,
          height: 250,
          color: Colors.deepPurple,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Opacity"),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _opacity = !_opacity;
            });
          },
          child: checkAnimation ? withAnimation : withoutAnimation,
        ),
      ),
    );
  }
}
