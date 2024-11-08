import 'package:flutter/material.dart';

class Day1SafeArea extends StatelessWidget {
  const Day1SafeArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SafeArea"),

      ),
      body: SafeArea(
        top: true,
        bottom: true,
        left: true,
        right: true,
        maintainBottomViewPadding: true, // Bật tính năng duy trì khoảng trống dưới
        minimum: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.deepPurple,
                child: const Center(
                  child: Text(
                    'Nhập văn bản vào ô bên dưới',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Nhập văn bản',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}