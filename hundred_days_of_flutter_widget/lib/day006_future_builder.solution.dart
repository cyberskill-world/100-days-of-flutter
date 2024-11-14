import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Day6FutureBuilder extends StatefulWidget {
  Day6FutureBuilder({Key? key}) : super(key: key);

  @override
  _Day6FutureBuilderState createState() => _Day6FutureBuilderState();
}

class _Day6FutureBuilderState extends State<Day6FutureBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureBuilder"),
      ),
      body: SafeArea(
        child: FutureBuilder<http.Response>( // đợi dữ liệu phản hồi và cập nhật lại UI
          future: http.get(Uri.parse("https://api.genderize.io/?name=luc")),
          initialData: null,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData && snapshot.data != null) {
                final response = snapshot.data as http.Response;
                final decodedData = json.decode(response.body);

                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Name: ${decodedData["name"]}"),
                      Text("Gender: ${decodedData["gender"]}"),
                      Text("Probability: ${decodedData["probability"]}"),
                      Text("Count: ${decodedData["count"]}"),
                    ],
                  ),
                );
              } else {
                return Center(child: Text("No data available from the server."));
              }
            } else {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Text("Waiting for the Record...."),
                    Text(snapshot.connectionState.toString())
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
