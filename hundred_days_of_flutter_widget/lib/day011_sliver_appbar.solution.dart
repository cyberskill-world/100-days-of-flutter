import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart'; // Import để sử dụng SystemUiOverlayStyle

class Day11SliverAppBar extends StatefulWidget {
  const Day11SliverAppBar({super.key});

  @override
  _Day11SliverAppBarState createState() => _Day11SliverAppBarState();
}

class _Day11SliverAppBarState extends State<Day11SliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              flexibleSpace: const FlexibleSpaceBar(
                centerTitle: true,
                title: Text('SliverAppBar'),
              ),
              backgroundColor: Colors.green,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              floating: true,
              elevation: 10.0,
              pinned: true,
              snap: true,
              expandedHeight: 150.0,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.help),
                  onPressed: () {
                    },
                )
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                const ListTile(
                  title: Text("Hello 1"),
                ),
                const ListTile(
                  title: Text("Hello 2"),
                ),
                const ListTile(
                  title: Text("Hello 3"),
                ),
                const ListTile(
                  title: Text("Hello 4"),
                ),
                const ListTile(
                  title: Text("Hello 4"),
                ),
                const ListTile(
                  title: Text("Hello 4"),
                ),
                const ListTile(
                  title: Text("Hello 4"),
                ),
                const ListTile(
                  title: Text("Hello 4"),
                ),
                const ListTile(
                  title: Text("Hello 4"),
                ),
                const ListTile(
                  title: Text("Hello 4"),
                ),
                const ListTile(
                  title: Text("Hello 4"),
                ),
                const ListTile(
                  title: Text("Hello 4"),
                ),
                const ListTile(
                  title: Text("Hello 4"),
                ),
                const ListTile(
                  title: Text("Hello 4"),
                ),
                const ListTile(
                  title: Text("Hello 4"),
                ),
                const ListTile(
                  title: Text("Hello 4"),
                ),
                const ListTile(
                  title: Text("Hello 4"),
                ),
                const ListTile(
                  title: Text("Hello 4"),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
