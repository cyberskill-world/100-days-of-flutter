import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Day12SliverGridListSolision extends StatefulWidget {
  Day12SliverGridListSolision({ key}) : super(key: key);

  @override
  _Day12SliverGridListState createState() => _Day12SliverGridListState();
}

class _Day12SliverGridListState extends State<Day12SliverGridListSolision> {
  @override
  Widget build(BuildContext context) {
    childrenList(text, pickColor) {
      return <Widget>[
        Container(
          alignment: Alignment.center,
          color: pickColor[100],
          child: Text('$text Items 1'),
        ),
        Container(
          alignment: Alignment.center,
          color: pickColor[200],
          child: Text('$text Items 2'),
        ),
        Container(
          alignment: Alignment.center,
          color: pickColor[300],
          child: Text('$text Items 3'),
        ),
        Container(
          alignment: Alignment.center,
          color: pickColor[400],
          child: Text('$text Items 4'),
        ),
        Container(
          alignment: Alignment.center,
          color: pickColor[500],
          child: Text('$text Items 5'),
        ),
        Container(
          alignment: Alignment.center,
          color: pickColor[600],
          child: Text('$text Items 6'),
        ),
        Container(
          alignment: Alignment.center,
          color: pickColor[700],
          child: Text('$text Items 7'),
        ),
        Container(
          alignment: Alignment.center,
          color: pickColor[800],
          child: Text('$text Items 8'),
        ),
      ];
    }

    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () async {
              const url =
                  'https://github.com/sanjaysanju618/100-Days-Of-Flutter-Widgets/' +
                      'blob/master/hundred_days_of_flutter_widget/' +
                      'lib/day012_slivergrid_list.dart';
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
          child: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            elevation: 20.0,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text('SliverGridList'),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[200 * ((index % 4) + 1)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount:
                  30,
            ),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 0.9,
            ),
          ),
          SliverGrid.extent(
            maxCrossAxisExtent: 150,
            children: childrenList("SliverGrid.extent", const Color.fromARGB(255, 97, 74, 39)),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.9,
          ),
          SliverGrid.count(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            children: childrenList("SliverGrid.count", const Color.fromARGB(255, 7, 142, 12)),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
                childrenList("SliverList Items", const Color.fromARGB(255, 188, 177, 177))),
          ),
          SliverFixedExtentList(
            itemExtent: 100.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index'),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }
}
