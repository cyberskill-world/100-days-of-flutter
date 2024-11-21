import 'package:flutter/material.dart';

class Day8FloatingActionButton extends StatefulWidget {
  const Day8FloatingActionButton({Key? key}) : super(key: key);

  @override
  _Day8FloatingActionButtonState createState() => _Day8FloatingActionButtonState();
}

class _Day8FloatingActionButtonState extends State<Day8FloatingActionButton> {
  bool _isColorYellow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FloatingActionButton"),
      ),
      floatingActionButton: FloatingActionButton(
        // Nút bấm thay đổi giao diện
        child: const Icon(Icons.add),
        elevation: 10.0, // Hiệu ứng bóng
        onPressed: () {
          setState(() {
            _isColorYellow = !_isColorYellow; // Đổi trạng thái
          });
        },
      ),
      // Vị trí của FloatingActionButton thay đổi dựa trên trạng thái
      floatingActionButtonLocation: _isColorYellow
          ? FloatingActionButtonLocation.centerFloat
          : FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: _isColorYellow ? Colors.yellow : Colors.pink,
        child: const SizedBox(height: 60.0),
      ),
      body: Container(
        color: _isColorYellow ? Colors.lightGreen : Colors.white,
        alignment: Alignment.center,
      ),
    );
  }
}
