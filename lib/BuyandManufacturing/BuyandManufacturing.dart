import 'package:admincode/Manufacturing%20man/Manufacturing_man.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuyandManufacturing extends StatefulWidget {
  const BuyandManufacturing({super.key});

  @override
  State<BuyandManufacturing> createState() => _BuyandManufacturingState();
}

class _BuyandManufacturingState extends State<BuyandManufacturing> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView(
        children: [
          SizedBox(
            height: 50.h,
          ),
          InkWell(
            onTap: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Manufacturing_man()));
            }),
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 40.h,
              width: 300.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF7FAFF),
              ),
              child: Text(
                "Give Work",
                style: TextStyle(
                    fontFamily: "itim", fontSize: 20, color: Colors.black),
              ),
            ),
          )
        ],
      )),
    );
  }
}
