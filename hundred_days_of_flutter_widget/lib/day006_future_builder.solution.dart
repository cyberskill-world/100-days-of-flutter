import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Day6FutureBuilder extends StatefulWidget {
  Day6FutureBuilder({Key? key}) : super(key: key);

  @override
  _Day6FutureBuilderState createState() => _Day6FutureBuilderState();
}

class _Day6FutureBuilderState extends State<Day6FutureBuilder> {
  late Future<Map<String, dynamic>> _futureData;

  @override
  void initState() {
    super.initState();
    _futureData = fetchData();
  }

  // Phương thức lấy dữ liệu từ API
  Future<Map<String, dynamic>> fetchData() async {
    try {
      final response = await http
          .get(Uri.parse("https://api.genderize.io/?name=luc"))
          .timeout(const Duration(seconds: 10)); // Đặt timeout
      if (response.statusCode == 200) {
        // Phân tích dữ liệu JSON
        return json.decode(response.body) as Map<String, dynamic>;
      } else {
        throw Exception(
            "Server returned an error: ${response.statusCode}"); // Lỗi server
      }
    } catch (e) {
      // Xử lý lỗi kết nối hoặc thời gian chờ
      throw Exception("Failed to load data: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureBuilder"),
      ),
      body: SafeArea(
        child: FutureBuilder<Map<String, dynamic>>(
          future: _futureData,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              // Đang đợi dữ liệu
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircularProgressIndicator(),
                    SizedBox(height: 16),
                    Text("Loading data..."),
                  ],
                ),
              );
            } else if (snapshot.connectionState == ConnectionState.done) {
              // Kết nối đã hoàn thành
              if (snapshot.hasData) {
                final data = snapshot.data!;
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Name: ${data["name"]}"),
                      Text("Gender: ${data["gender"]}"),
                      Text("Probability: ${data["probability"]}"),
                      Text("Count: ${data["count"]}"),
                    ],
                  ),
                );
              } else if (snapshot.hasError) {
                // Có lỗi
                return Center(
                  child: Text(
                    "Error: ${snapshot.error}",
                    style: TextStyle(color: Colors.red),
                  ),
                );
              } else {
                // Không có dữ liệu
                return const Center(child: Text("No data available."));
              }
            } else {
              // Các trạng thái khác (không mong đợi)
              return const Center(child: Text("Unexpected state."));
            }
          },
        ),
      ),
    );
  }
}
