import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Month_income extends StatefulWidget {
  const Month_income({super.key});

  @override
  State<Month_income> createState() => _Month_incomeState();
}

class _Month_incomeState extends State<Month_income> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: [
          SizedBox(
            height: 20,
          ),
          DataTable(columns: [
            DataColumn(label: Text('Date')),
            DataColumn(label: Text('Money')),
          ], rows: [
            DataRow(cells: [
              DataCell(Text('01-01-2000')),
              DataCell(Text('700000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-02-2000')),
              DataCell(Text('25000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-03-2000')),
              DataCell(Text('64000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-04-2000')),
              DataCell(Text('25000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-05-2000')),
              DataCell(Text('25000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-06-2000')),
              DataCell(Text('25000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-07-2000')),
              DataCell(Text('890000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-08-2000')),
              DataCell(Text('890000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-09-2000')),
              DataCell(Text('890000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-10-2000')),
              DataCell(Text('890000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-11-2000')),
              DataCell(Text('890000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-1-2000')),
              DataCell(Text('890000Tk')),
            ]),
          ]),
        ]));
  }
}
