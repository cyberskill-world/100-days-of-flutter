import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({ key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      /**
       * ? what is FractionallySizedBox....
       * ! we can able to sized the child by percentage or fractional....
       */
      child: FractionallySizedBox(
        widthFactor: 0.7, // ! we can specify the width factor here....
        heightFactor: 0.5, // ! we can specify the height factor here....
        child: ElevatedButton(
          onPressed: () {
            // show toast message....
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text(
                "Button sized by 70% width and 50% height",
                textAlign: TextAlign.center,
              ),
              duration: Duration(seconds: 1),
            ));
          },
          child: Text("This is Button"),
        ),
      ),
    );
  }
}

extension on ScaffoldState {
  void showSnackBar(SnackBar snackBar) {}
}

class Day51FractionallySizedBox extends StatelessWidget {
  const Day51FractionallySizedBox({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyPage(),
      appBar: AppBar(
        title: Text("FractionallySizedBox"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () async {
              const url =
                  'https://github.com/sanjaysanju618/100-Days-Of-Flutter-Widgets/' +
                      'blob/master/hundred_days_of_flutter_widget/' +
                      'lib/day051_fractionally_sized_box.dart';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
          )
        ],
      ),
    );
  }
}
