import 'package:admincode/Homepage/Home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Details_m extends StatefulWidget {
  const Details_m({Key? key}) : super(key: key);

  @override
  State<Details_m> createState() => _Details_mState();
}

class _Details_mState extends State<Details_m> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        SizedBox(
          height: 100,
        ),
        Container(
          alignment: Alignment.center,
          height: 40.h,
          width: 300.w,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            "Krishna Gold Shop",
            style: TextStyle(
                fontFamily: "itim", fontSize: 25, color: Colors.black),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          height: 40.h,
          width: 300.w,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            " 20-07-2000",
            style: TextStyle(
                fontFamily: "itim", fontSize: 20, color: Colors.black),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 20.h,
          width: 700.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text("Mr.Rahul",
              style: TextStyle(
                  fontSize: 15, fontFamily: "itim", color: Colors.black)),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 20.h,
          width: 200.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text("Mew towner aros ,chiigltonk",
              style: TextStyle(
                  fontSize: 15, fontFamily: "itim", color: Colors.black)),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 20.h,
          width: 200.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text("013743995723",
              style: TextStyle(
                  fontSize: 15, fontFamily: "itim", color: Colors.black)),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 100),
          height: 40.h,
          width: 200.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            "5 % 100",
            style: TextStyle(
                fontSize: 25, fontFamily: "itim", color: Colors.black),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        DataTable(columns: [
          DataColumn(label: Text('No')),
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Weigth')),
          DataColumn(label: Text('Money')),
        ], rows: [
          DataRow(cells: [
            DataCell(Text('1')),
            DataCell(Text('Neckless')),
            DataCell(Text('1.6b')),
            DataCell(Text('680900Tk')),
          ]),
          DataRow(cells: [
            DataCell(Text('2')),
            DataCell(Text('Neckless')),
            DataCell(Text('1.6b')),
            DataCell(Text('680900Tk')),
          ]),
          DataRow(cells: [
            DataCell(Text('2')),
            DataCell(Text('Neckless')),
            DataCell(Text('1.6b')),
            DataCell(Text('680900Tk')),
          ]),
          DataRow(cells: [
            DataCell(Text('3')),
            DataCell(Text('Neckless')),
            DataCell(Text('1.6b')),
            DataCell(Text('680900Tk')),
          ]),
          DataRow(cells: [
            DataCell(Text('1')),
            DataCell(Text('Neckless')),
            DataCell(Text('1.6b')),
            DataCell(Text('680900Tk')),
          ]),
          DataRow(cells: [
            DataCell(Text('4')),
            DataCell(Text('Neckless')),
            DataCell(Text('1.6b')),
            DataCell(Text('680900Tk')),
          ]),
          DataRow(cells: [
            DataCell(Text('1')),
            DataCell(Text('Neckless')),
            DataCell(Text('1.6b')),
            DataCell(Text('680900Tk')),
          ]),
          DataRow(cells: [
            DataCell(Text('5')),
            DataCell(Text('Neckless')),
            DataCell(Text('1.6b')),
            DataCell(Text('680900Tk')),
          ]),
          DataRow(cells: [
            DataCell(Text('6')),
            DataCell(Text('Neckless')),
            DataCell(Text('1.6b')),
            DataCell(Text('680900Tk')),
          ]),
          DataRow(cells: [
            DataCell(Text('7')),
            DataCell(Text('Neckless')),
            DataCell(Text('1.6b')),
            DataCell(Text('680900Tk')),
          ]),
          DataRow(cells: [
            DataCell(Text('8')),
            DataCell(Text('Neckless')),
            DataCell(Text('1.6b')),
            DataCell(Text('680900Tk')),
          ]),
          DataRow(cells: [
            DataCell(Text('9')),
            DataCell(Text('Neckless')),
            DataCell(Text('1.6b')),
            DataCell(Text('680900Tk')),
          ]),
          DataRow(cells: [
            DataCell(Text('10')),
            DataCell(Text('Neckless')),
            DataCell(Text('1.6b')),
            DataCell(Text('680900Tk')),
          ]),
          DataRow(cells: [
            DataCell(Text('')),
            DataCell(Text('')),
            DataCell(Text('Money')),
            DataCell(Text('2500000Tk')),
          ]),
          DataRow(cells: [
            DataCell(Text('')),
            DataCell(Text('')),
            DataCell(Text('Interest')),
            DataCell(Text('5600Tk')),
          ]),
          DataRow(cells: [
            DataCell(Text('')),
            DataCell(Text('')),
            DataCell(Text('Total')),
            DataCell(Text('232434')),
          ]),
        ]),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home_page()));
          },
          child: Container(
            height: 40.h,
            width: 300.w,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 200),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Print",
              style: TextStyle(
                  fontSize: 20, fontFamily: "itim", color: Colors.white),
            ),
          ),
        ),
      ]),
    );
  }
}
