import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Day4AnimationContainer extends StatefulWidget {
  Day4AnimationContainer({ key}) : super(key: key);

  @override
  _Day4AnimationContainerState createState() => _Day4AnimationContainerState();
}

class _Day4AnimationContainerState extends State<Day4AnimationContainer> {
  var isClick = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedContainer"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () async {
              const url =
                  'https://github.com/sanjaysanju618/100-Days-Of-Flutter-Widgets/' +
                      'blob/master/hundred_days_of_flutter_widget/' +
                      'lib/day004_animation_container.dart';
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
              isClick = !isClick;
            });
          },
          child: Center(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.elasticIn,
              width: isClick ? 200.0 : 200.0,
              height: isClick ? 100.0 : 200.0,
              decoration: BoxDecoration(
                color: isClick ? Colors.red : Colors.blue,
                borderRadius: BorderRadius.circular(isClick ? 0 : 50),

              ),
              child: Center(

                child: Text(
                  isClick ? "Click Me" : "Click Me",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
