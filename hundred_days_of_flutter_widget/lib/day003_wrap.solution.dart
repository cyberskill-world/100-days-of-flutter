import 'package:flutter/material.dart';

class Day3Wrap extends StatelessWidget {
  const Day3Wrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isRow = false;

    final List<Color> colors = [
      Colors.red,
      Colors.green,
      Colors.yellow,
      Colors.blue,
      Colors.orange,
      Colors.pink,
      Colors.lime,
      Colors.indigo,
      Colors.purple,
      Colors.black,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap"),
      ),
      body: Container(
        child: Wrap(
          direction: isRow ? Axis.horizontal : Axis.vertical,
          spacing: 10.0,
          runSpacing: 10.0,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          textDirection: TextDirection.rtl,
          verticalDirection: VerticalDirection.down,
          children: colors
              .map(
                (color) => Container(
              width: 100,
              height: 100,
              color: color,
            ),
          )
              .toList(),
        ),
      ),
    );
  }
}
