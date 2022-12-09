import 'package:admincode/BuyandManufacturing/BuyandManufacturing.dart';
import 'package:admincode/Calculator/Calcula_tor.dart';
import 'package:admincode/Employee/Employee_list.dart';
import 'package:admincode/Incomelist/Income_list.dart';
import 'package:admincode/Mortagelis/Mortage_list.dart';
import 'package:admincode/Myproducet/Producet_list.dart';
import 'package:admincode/NewEmployee/New_employee.dart';
import 'package:admincode/NewSell/New_sell.dart';
import 'package:admincode/Newmortage/New_mortage.dart';
import 'package:admincode/Oldandnew/OldandNew_mortage.dart';
import 'package:admincode/Paymentlist/Payment_list.dart';
import 'package:admincode/SellList/Sell_list.dart';
import 'package:admincode/Worldwideprice/WorldWide_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.center,
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: Colors.blueAccent),
                child: Text(
                  "339947টাকা",
                  style: TextStyle(
                      fontFamily: "itim", fontSize: 25, color: Colors.white),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    "বন্ধক: 344500টাকা",
                    style: TextStyle(
                        color: Colors.black, fontFamily: "itim", fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "বিক্রয়: 344500টাকা",
                    style: TextStyle(
                        color: Colors.black, fontFamily: "itim", fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "খরচ: 344500টাকা",
                    style: TextStyle(
                        color: Colors.black, fontFamily: "itim", fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OldandNew_mortage()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 100,
                      width: 80.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff85C1E9)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                  "assets/personal-information.png")),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "বন্ধক ",
                            style: TextStyle(
                                fontFamily: "inter",
                                fontSize: 15,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Income_list()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 100,
                      width: 80.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff76D7C4)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/earning.png")),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "ইনকাম",
                            style: TextStyle(
                                fontFamily: "inter",
                                fontSize: 15,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Sell_list()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 100,
                      width: 80.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffD7BDE2)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/sell.png")),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "বিক্রি",
                            style: TextStyle(
                                fontFamily: "inter",
                                fontSize: 15,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Calcula_tor()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 100,
                      width: 80.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffE6B0AA)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/calculator.png")),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "ক্যালকুলেটর ",
                            style: TextStyle(
                                fontFamily: "inter",
                                fontSize: 15,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Employee_list()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 100,
                      width: 80.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF4D03F)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/Employees.png")),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "লোকজন",
                            style: TextStyle(
                                fontFamily: "inter",
                                fontSize: 15,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Payment_list()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 100,
                      width: 80.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffCACFD2)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/receipt.png")),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "প্রদান",
                            style: TextStyle(
                                fontFamily: "inter",
                                fontSize: 15,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 100,
                    width: 80.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff7FB3D5)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            height: 50,
                            width: 50,
                            child: Image.asset("assets/box.png")),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Product",
                          style: TextStyle(
                              fontFamily: "inter",
                              fontSize: 15,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WorldWide_price()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 100,
                      width: 80.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff73C6B6)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/worldwide.png")),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "টাকা",
                            style: TextStyle(
                                fontFamily: "inter",
                                fontSize: 15,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => New_mortage()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 100,
                      width: 80.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff7F8C8D)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/add-user.png")),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            " নতুন বন্ধক ",
                            style: TextStyle(
                                fontFamily: "inter",
                                fontSize: 15,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => New_employee()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 100,
                      width: 80.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff52BE80)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/NewEmployee.png")),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "নতুন লোকজন  ",
                            style: TextStyle(
                                fontFamily: "inter",
                                fontSize: 15,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => New_sell()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 100,
                      width: 80.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff808B96)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/add-group.png")),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "নতুন বিক্রি ",
                            style: TextStyle(
                                fontFamily: "inter",
                                fontSize: 15,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BuyandManufacturing()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 100,
                      width: 80.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF08080)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              child: Image.asset("assets/add-to-cart.png")),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "অন্যান ",
                            style: TextStyle(
                                fontFamily: "inter",
                                fontSize: 15,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
