import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Day5OpacitySolusion extends StatefulWidget {
  Day5OpacitySolusion({ key}) : super(key: key);

  @override
  _Day5OpacityState createState() => _Day5OpacityState();
}

class _Day5OpacityState extends State<Day5OpacitySolusion> {
  bool _opacity = false;
  @override
  Widget build(BuildContext context) {
    bool checkAnimation =
        true;

    var withAnimation = AnimatedOpacity(
      duration: Duration(milliseconds: 900),
      opacity: _opacity ? 0.1 : 1.0,
      child: Center(
        child: Container(
          width: 300,
          height: 300,
          color: const Color.fromARGB(255, 94, 44, 181),
        ),
      ),
    );

    var withoutAnimation = Opacity(
      opacity: _opacity ? 0.5 : 1.0,
      child: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.deepPurple,
        ),
      ),
    );

    var withAnimationText = AnimatedOpacity(
      duration: Duration(milliseconds: 900),
      opacity: _opacity ? 0.1 : 1.0,
      child: Center(
        child: Text(
          "Click Me",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () async {
              const url =
                  'https://github.com/sanjaysanju618/100-Days-Of-Flutter-Widgets/' +
                      'blob/master/hundred_days_of_flutter_widget/' +
                      'lib/day005_opacity.dart';
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
        child: GestureDetector(
          onTap: () {
            setState(() {
              _opacity = !_opacity;
            });
          },
          child: checkAnimation ? withAnimationText : withoutAnimation,
        ),
      ),
    );
  }
}
