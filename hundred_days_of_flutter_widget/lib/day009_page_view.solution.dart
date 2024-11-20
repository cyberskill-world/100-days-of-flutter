import 'package:flutter/material.dart';

class Day9PageView extends StatefulWidget {
  const Day9PageView({Key? key}) : super(key: key);

  @override
  _Day9PageViewState createState() => _Day9PageViewState();
}

class _Day9PageViewState extends State<Day9PageView> {
  late PageController _controller;
  final List<MaterialColor> _colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.brown
  ];

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PageView"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: _colors.length,
                itemBuilder: (context, index) {
                  return pageCreator(index + 1, _colors[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget pageCreator(int i, Color color) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 250,
          height: 250,
          color: color,
          child: Center(
            child: Text(
              "Page No $i",
            ),
          ),
        ),
      ),
    );
  }
}
