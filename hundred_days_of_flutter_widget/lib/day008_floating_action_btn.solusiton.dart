import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Day8FloatingActionButton extends StatefulWidget {
  Day8FloatingActionButton({key}) : super(key: key);

  @override
  _Day8FloatingActionButton createState() => _Day8FloatingActionButton();
}

class _Day8FloatingActionButton extends State<Day8FloatingActionButton> {
  bool _color = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FloatingActionButton"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () async {
              const url =
                  'https://github.com/sanjaysanju618/100-Days-Of-Flutter-Widgets/' +
                      'blob/master/hundred_days_of_flutter_widget/' +
                      'lib/day008_floating_action_btn.dart';
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw 'Could not launch $url';
              }
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // ? what is FloatingActionButton....
        child: Icon(Icons.add), // ? add the button icon....
        elevation: 10.0, // ! we can give the elevation....
        mini: false, // ! make change here to see the mini effect....
        backgroundColor: _color ? Colors.red : Colors.green,
        shape: _color
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              )
            : CircleBorder(),
        onPressed: () {
          setState(() {
            _color = !_color; // ! toggle the colors and ui....
          });
        },
        focusColor: Colors.blue,
        focusElevation: 20.0,
      ),
      floatingActionButtonLocation: _color
          ? FloatingActionButtonLocation.centerFloat
          : FloatingActionButtonLocation.centerDocked,
      /**
       * ! [floatingActionButtonLocation] to change the position of ....
       * ! such as : ---
       * * centerFloat, centerDocked, startTop, miniStartTop....
       * * endTop, endFloat, endDocked....
       */
      bottomNavigationBar: BottomAppBar(
        color: _color ? Colors.yellow : Colors.pink,
        child: Container(
          height: 60.0,
        ),
      ),
      backgroundColor: _color ? Colors.blue : Colors.white,
      bottomSheet: Container(
        color: _color ? Colors.red : Colors.white,
        height: 100.0,
      ),
      drawer: Drawer(
        child: Container(
          color: _color ? Colors.orange : Colors.white,
        ),
      ),
      endDrawer: Drawer(
        child: Container(
          color: _color ? Colors.purple : Colors.white,
        ),
      ),
      body: Container(
        color: _color ? Colors.lightGreen : Colors.white,
      ),
    );
  }
}
