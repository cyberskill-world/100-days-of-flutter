import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Day3WrapSolusion extends StatelessWidget {
  const Day3WrapSolusion({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isRow = true; // change [false] to toggle between Row and Column....
    return Scaffold(
      appBar: AppBar(
        title: Text("Warp"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () async {
              const url =
                  'https://github.com/sanjaysanju618/100-Days-Of-Flutter-Widgets/' +
                      'blob/master/hundred_days_of_flutter_widget/' +
                      'lib/day003_wrap.dart';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
          )
        ],
      ),
      body: Container(
        child: Wrap(
          direction: isRow
              ? Axis.horizontal
              : Axis.horizontal,
          spacing: 10.0,
          runSpacing: 10.0, 
          alignment: WrapAlignment.end, 
          runAlignment: WrapAlignment.end, 
          crossAxisAlignment: WrapCrossAlignment.end,
          textDirection: TextDirection.rtl,
          verticalDirection: VerticalDirection.up,
          children: <Widget>[
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.green,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.yellow,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.purple,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.orange,
              height: 100,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
