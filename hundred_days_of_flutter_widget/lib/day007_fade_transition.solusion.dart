import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Day7FadeTransitionSolusion extends StatefulWidget {
  @override
  _Day7FadeTransitionState createState() => _Day7FadeTransitionState();
}

class _Day7FadeTransitionState extends State<Day7FadeTransitionSolusion>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller; // ? What is AnimationController....

  late Animation<double> _animation; // ? What is animation....

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 1), reverseDuration: Duration(seconds: 1), lowerBound: 0.0, upperBound: 1.0, animationBehavior: AnimationBehavior.normal);
        /**
         * ! here we give the duration for the animation....
         * ! with this contoller we can control and watch the animation....
         */

    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
        /**
         * ! here we assign the Tween animation for the [_animation]....
         * ! Tween gives you the begin/start value and end/final value in the begi itself....
         */
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose(); // ? stop the controller....
  }

  @override
  Widget build(BuildContext context) {
    _controller.reset(); // ? reset the animation.... [opacity = 0.0(begin)]

    return Scaffold(
      appBar: AppBar(
        title: Text("FadeTransition"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () async {
              const url =
                  'https://github.com/sanjaysanju618/100-Days-Of-Flutter-Widgets/' +
                      'blob/master/hundred_days_of_flutter_widget/' +
                      'lib/day007_fade_transition.dart';
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
            _controller
                .forward(); // ? start the animation.... [opacity = 0.0(begin) to 1.0(end)]
          },
          onDoubleTap: () {
            _controller
                .reverse(); // ? reverse the animation.... [opacity = 1.0(end) to 0.0(begin)]
          },
          onLongPress: () {
            _controller
                .repeat(); // ? repeat the animation.... loop[opacity = 0.0(begin) to 1.0(end)]
          },
          onDoubleTapCancel: () {
            _controller.reset(); // ? reset the animation.... [opacity = 0.0(begin)]
          },
          child: Center(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                FadeTransition(
                  // ? what is FadeAnimation....
                  opacity: _animation,

                  /**
                   * ! [opacity] is the imprtant property which holds the [Animation] as the value....
                   * ! we can have FooTransition with the specifiy values.... 
                   * ! such as FadeTransition, RotationTransition, ScaleTransition,  SizeTransition, PositionTransition....
                   */

                  child: Column(
                    children: [
                      Container(
                        width: 250,
                        height: 250,
                        color: const Color.fromARGB(255, 232, 208, 201),
                      ),
                      Container(
                        width: 250,
                        height: 250,
                        color: const Color.fromARGB(255, 122, 81, 68),
                      ),
                      Container(
                        width: 250,
                        height: 250,
                        color: const Color.fromARGB(255, 173, 36, 2),
                      )
                    ],
                  ),
                ),
                Text(
                  "Tap to forward\nDoubleTap to backward\nLongpress to repeat",
                  style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 244, 253, 5)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
