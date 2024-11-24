import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Day10TableSolusion extends StatefulWidget {
  Day10TableSolusion({key}) : super(key: key);

  @override
  _Day10TableStateSolusion createState() => _Day10TableStateSolusion();
}

class _Day10TableStateSolusion extends State<Day10TableSolusion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () async {
              const url =
                  'https://github.com/sanjaysanju618/100-Days-Of-Flutter-Widgets/' +
                      'blob/master/hundred_days_of_flutter_widget/' +
                      'lib/day010_table.dart';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
          )
        ],
      ),
      body: SafeArea(
        child: Table(
          defaultColumnWidth: FractionColumnWidth(0.1),
          columnWidths: {2: FractionColumnWidth(0.1)},
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          textBaseline: TextBaseline.ideographic,
          textDirection: TextDirection.rtl,
          border: TableBorder.all(
            color: const Color.fromARGB(255, 0, 0, 0),
            width: 2.0,
          ),
          children: [
            TableRow(children: [
              Container(
                height: 50,
                color: Colors.red,
              ),
              Container(
                height: 50,
                color: Colors.yellow,
              ),
              Container(
                height: 50,
                color: Colors.orange,
              ),
            ]),
            TableRow(children: [
              Container(
                height: 150,
                color: Colors.pink,
              ),
              Container(
                height: 100,
                color: Colors.black,
              ),
              Container(
                height: 150,
                color: Colors.blue,
              ),
            ]),
            TableRow(
              children: [
                Container(
                  height: 50,
                  color: Colors.green,
                ),
                Container(
                  height: 150,
                  color: Colors.purple,
                ),
                Container(
                  height: 150,
                  color: Colors.cyan,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
