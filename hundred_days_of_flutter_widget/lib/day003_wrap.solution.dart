import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Day3Wrap extends StatelessWidget {
  const Day3Wrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isRow = false;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap"),
      ),
      body: Container(
        child: Wrap(
          direction: isRow ? Axis.horizontal // theo hàng
              : Axis.vertical, // theo cột
          spacing: 10.0, // khoảng cách ptu trong cùng 1 hàng/cột

          runSpacing: 10.0,

          alignment: WrapAlignment.center, // căn chỉnh mỗi dòng/cột

          runAlignment: WrapAlignment.center, //

          crossAxisAlignment: WrapCrossAlignment.center,

          textDirection: TextDirection.rtl, //xác định hướng các ptu

          verticalDirection: VerticalDirection.down, // xác dịnh chiều thứ tự của các ptu

          children: <Widget>[
            Container(
              width: 130,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              ),
            Container(
              width: 100,
              height: 100,
              color: Colors.orange,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.pink,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.lime,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.indigo,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.purple,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
