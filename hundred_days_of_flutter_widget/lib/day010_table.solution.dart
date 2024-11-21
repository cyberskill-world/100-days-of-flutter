import 'package:flutter/material.dart';

class Day10Table extends StatefulWidget {
  const Day10Table({super.key});

  @override
  _Day10TableState createState() => _Day10TableState();
}

class _Day10TableState extends State<Day10Table> {

  final List<List<Map<String, dynamic>>> tableData = [
    [
      {"color": Colors.red, "height": 50.0},
      {"color": Colors.yellow, "height": 100.0},
      {"color": Colors.orange, "height": 150.0},
    ],
    [
      {"color": Colors.pink, "height": 150.0},
      {"color": Colors.black, "height": 100.0},
      {"color": Colors.blue, "height": 50.0},
    ],
    [
      {"color": Colors.green, "height": 50.0},
      {"color": Colors.purple, "height": 100.0},
      {"color": Colors.cyan, "height": 150.0},
    ],
  ];

  // Hàm tạo ô (cell) trong bảng
  Widget buildCell(Color color, double height) {
    return Container(
      height: height,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Table"),
      ),
      body: SafeArea(
        child: Table(
          defaultColumnWidth: const FractionColumnWidth(0.1),
          columnWidths: const {2: FractionColumnWidth(0.1)},
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          border: TableBorder.all(
            color: Colors.indigo[900]!,
            width: 2.0,
          ),
          children: tableData.map((row) {
            return TableRow(
              children: row.map((cell) {
                return buildCell(cell["color"], cell["height"]);
              }).toList(),
            );
          }).toList(),
        ),
      ),
    );
  }
}
