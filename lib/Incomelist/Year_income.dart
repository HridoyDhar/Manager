import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Year_income extends StatefulWidget {
  const Year_income({super.key});

  @override
  State<Year_income> createState() => _Year_incomeState();
}

class _Year_incomeState extends State<Year_income> {
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
              DataCell(Text('01-02-2001')),
              DataCell(Text('25000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-03-2002')),
              DataCell(Text('64000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-04-2003')),
              DataCell(Text('25000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-05-2004')),
              DataCell(Text('25000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-06-2005')),
              DataCell(Text('25000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-07-2006')),
              DataCell(Text('890000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-08-2007')),
              DataCell(Text('890000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-09-2008')),
              DataCell(Text('890000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-10-2009')),
              DataCell(Text('890000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-11-2010')),
              DataCell(Text('890000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-1-2011')),
              DataCell(Text('890000Tk')),
            ]),
            DataRow(cells: [
              DataCell(Text('01-1-2012')),
              DataCell(Text('890000Tk')),
            ]),
          ]),
        ]));
  }
}
