import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Day1SafeArea extends StatelessWidget {
  const Day1SafeArea({
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SafeArea"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.help),
            onPressed: () async {
              const url =
                  'https://github.com/sanjaysanju618/100-Days-Of-Flutter-Widgets/blob/master/hundred_days_of_flutter_widget/lib/day001_safearea.dart';
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
          top: true,
          bottom: true,
          left: true,
          right: true,
          maintainBottomViewPadding: true,
          minimum: const EdgeInsets.all(50),
          child: SingleChildScrollView(
            child: Wrap(
              children: List.generate(
                100,
                (index) => Container(
                  width: 100,
                  height: 100,
                  color: Colors.primaries[index % Colors.primaries.length],
                  child: Center(
                    child: Text(
                      index.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
