import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Day11SliverAppBarSolusion extends StatefulWidget {
  Day11SliverAppBarSolusion({key}) : super(key: key);

  @override
  _Day11SliverAppBarState createState() => _Day11SliverAppBarState();
}

class _Day11SliverAppBarState extends State<Day11SliverAppBarSolusion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              stretch: true,
              flexibleSpace: const FlexibleSpaceBar(
                stretchModes: [
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground,
                  StretchMode.fadeTitle,
                ],
                centerTitle: true,
                title: Text('SliverAppBar'),
              ),
              backgroundColor:
                  Colors.green, // ! to provide the bg color for tha app bar....
              floating: true, // ! to make the appbar floating...
              elevation: 10.0, // ! to give cool shadow effect....
              expandedHeight: 150.0, // ! max expand or strech size....
              pinned: true, // ! to make the appbar pinned....
              snap: true, // ! to make the appbar snap....
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.help),
                  onPressed: () async {
                    const url =
                        'https://github.com/sanjaysanju618/100-Days-Of-Flutter-Widgets/' +
                            'blob/master/hundred_days_of_flutter_widget/' +
                            'lib/day011_sliver_appbar.dart';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                )
              ],
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              ListTile(
                title: Text("Hello 1"),
              ),
              ListTile(
                title: Text("Hello 2"),
              ),
              ListTile(
                title: Text("Hello 3"),
              ),
              ListTile(
                title: Text("Hello 4"),
              ),
              ListTile(
                title: Text("Hello 5"),
              ),
              ListTile(
                title: Text("Hello 6"),
              ),
            ])),
          ],
        ),
      ),
    );
  }
}
