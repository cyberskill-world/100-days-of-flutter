import 'package:flutter/material.dart';

class Day7FadeTransition extends StatefulWidget {
  @override
  _Day7FadeTransitionState createState() => _Day7FadeTransitionState();
}

class _Day7FadeTransitionState extends State<Day7FadeTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 1)); // thay đổi trong vòng 1s

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller); // cho giá trị chạy từ 0 đến 1
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.reset();

    return Scaffold(
      appBar: AppBar(
        title: Text("FadeTransition"),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            _controller.forward(); // cho giá trị chạy từ 0 đến 1
          },
          onDoubleTap: () {
            _controller.reverse(); // ngược lại
          },
          onLongPress: () {
            _controller.repeat(); // lập lại
          },
          child: Center(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                FadeTransition(
                  opacity: _animation, // đổi độ mờ dựa vào giá trị truyền vào
                  child: Container(
                    width: 250,
                    height: 250,
                    color: Colors.deepOrange,
                  ),
                ),
                const Text(
                  "Tap to forward\nDoubleTap to backward\nLongpress to repeat",
                  style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
