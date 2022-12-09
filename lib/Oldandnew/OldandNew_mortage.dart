import 'package:admincode/MortageOld/Mortage_oldList.dart';
import 'package:admincode/Mortagelis/Mortage_list.dart';
import 'package:admincode/PersonalMortage/Mortage_big.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OldandNew_mortage extends StatefulWidget {
  const OldandNew_mortage({super.key});

  @override
  State<OldandNew_mortage> createState() => _OldandNew_mortageState();
}

class _OldandNew_mortageState extends State<OldandNew_mortage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SizedBox(
          height: 150,
        ),
        InkWell(
          onTap: (() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Mortage_big()));
          }),
          child: Container(
            height: 40.h,
            width: 300.w,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 100),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
              color: Color(0xffF7FAFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "বড় বন্ধক ",
              style: TextStyle(
                  fontSize: 20, fontFamily: "itim", color: Colors.blue),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Mortage_oldlist()));
          },
          child: Container(
            height: 40.h,
            width: 300.w,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 100),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
              color: Color(0xffF7FAFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "পুরাতন বন্ধক",
              style: TextStyle(
                  fontSize: 20, fontFamily: "itim", color: Colors.blue),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Mortage_list()));
          },
          child: Container(
            height: 40.h,
            width: 300.w,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 100),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
              color: Color(0xffF7FAFF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "নতুন  বন্ধক ",
              style: TextStyle(
                  fontSize: 20, fontFamily: "itim", color: Colors.blue),
            ),
          ),
        ),
      ]),
    );
  }
}
