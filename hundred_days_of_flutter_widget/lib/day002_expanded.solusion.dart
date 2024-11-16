import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Day2ExpandedSolusion extends StatelessWidget {
  const Day2ExpandedSolusion({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isExpanded = true;
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () async {
              const url =
                  'https://github.com/sanjaysanju618/100-Days-Of-Flutter-Widgets/' +
                      'blob/master/hundred_days_of_flutter_widget/lib/day002_expanded.dart';
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
        child: Container(
          child: isExpanded
              ? Column(
                  children: <Widget>[
                    Expanded(
                      flex: 10,
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                    Expanded(
                      flex: 80,
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                )
              // ignore: dead_code
              : Column(
                  children: <Widget>[
                    Container(
                      color: Colors.red,
                      height: 100,
                    ),
                    Container(
                      color: Colors.green,
                      height: 400,
                    ),
                    Container(
                      color: Colors.yellow,
                      height: 100,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
