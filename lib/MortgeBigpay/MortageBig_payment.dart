import 'package:admincode/Homepage/Home_page.dart';
import 'package:admincode/M_details.dart/Details_m.dart';
import 'package:admincode/MortageOld/Payment.dart';
import 'package:admincode/MortgeBigpay/Big_print.dart';
import 'package:admincode/MortgeBigpay/Payment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MortageBig_payment extends StatefulWidget {
  const MortageBig_payment({Key? key}) : super(key: key);

  @override
  State<MortageBig_payment> createState() => _MortageBig_paymentState();
}

class _MortageBig_paymentState extends State<MortageBig_payment> {
  DateTime currentDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(3050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }

  final ScrollController _controller = ScrollController();
  double _scrollOffset = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
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
            "কৃষ্ণ কুমার  গোল্ড ",
            style: TextStyle(
                fontFamily: "itim", fontSize: 25, color: Colors.black),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 200),
          alignment: Alignment.center,
          height: 40.h,
          width: 200.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(" ১২-০৯-২০১০",
              style: TextStyle(
                  fontFamily: "itim", fontSize: 20, color: Colors.black)),
        ),
        SizedBox(
          height: 30,
        ),
        Card(
          child: Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 20.h,
            width: 700.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("কৃষ্ণ কুমার",
                style: TextStyle(
                    fontSize: 15, fontFamily: "itim", color: Colors.black)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          child: Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 20.h,
            width: 200.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("বাহাদ্র্রহাট ,চিটাগং ",
                style: TextStyle(
                    fontSize: 15, fontFamily: "itim", color: Colors.black)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          child: Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 20.h,
            width: 200.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("০১৯৮৩৭৮৯৭২",
                style: TextStyle(
                    fontSize: 15, fontFamily: "itim", color: Colors.black)),
          ),
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
            "৫ % ১০০",
            style: TextStyle(
                fontSize: 25, fontFamily: "itim", color: Colors.black),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        DataTable(columns: [
          DataColumn(label: Text('নাম্বার')),
          DataColumn(label: Text('নাম')),
          DataColumn(label: Text('পিস')),
          // DataColumn(label: Text('Money')),
        ], rows: [
          DataRow(cells: [
            DataCell(Text(' ১')),
            DataCell(Text('প্রবীণ দাশ')),
            DataCell(Text('১২০')),
            // DataCell(Text('680900Tk')),
          ]),
        ]),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Big_paymet()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40.h,
                width: 100.w,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 20),
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
                  "Pay",
                  style: TextStyle(
                      fontSize: 20, fontFamily: "itim", color: Colors.white),
                ),
              ),
              InkWell(
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Big_print()));
                }),
                child: Container(
                  height: 40.h,
                  width: 100.w,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 20),
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
            ],
          ),
        ),
      ]),
    );
  }
}
