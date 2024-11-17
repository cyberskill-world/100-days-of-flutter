import 'package:flutter/material.dart';
import 'package:http/http.dart'
    as http; // ? I have used the http pkg for fetch data ....
import 'dart:convert';

import 'package:url_launcher/url_launcher.dart'; // ? I have used the inbuild convert of dart for json convertion....

class Day6FutureBuilderSolusion extends StatefulWidget {
  Day6FutureBuilderSolusion({key}) : super(key: key);

  @override
  _Day6FutureBuilderState createState() => _Day6FutureBuilderState();
}

class _Day6FutureBuilderState extends State<Day6FutureBuilderSolusion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureBuilder.Solusion"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () async {
              const url =
                  'https://github.com/sanjaysanju618/100-Days-Of-Flutter-Widgets/' +
                      'blob/master/hundred_days_of_flutter_widget/' +
                      'lib/day006_future_builder.dart';
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
        child: FutureBuilder(
          future: http.get(
              "http://www.json-generator.com/api/json/get/cesFfSXQpu?indent=2"
                  as Uri),
          initialData: "Waiting for the Record....",
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Center(
                  child: Text(json.decode((snapshot.data?.body))["text"]),
                  );
            } else {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(), // ? [CircularProgressIndicator] is used to show the progress....
                    Text(
                      snapshot.data.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ), // ?  here we print the inital data from the [initialData] property....
                    Text(
                      snapshot.connectionState.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ), // ? here we watch the current state of the connection....
                    Text(
                      snapshot.hasData.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ), // ? here we watch the data is available or not....
                    Text(
                      snapshot.hasError.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ), // ? here we watch the error is available or not....
                    Text(
                      snapshot.error.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ), // ? here we watch the error....
                    Text(
                      snapshot.data.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

extension on Object? {
  get body => null;
}
