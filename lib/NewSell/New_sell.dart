import 'package:admincode/Homepage/Home_page.dart';
import 'package:admincode/Imae_picker.dart';
import 'package:admincode/Mortagelis/Mortage_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class New_sell extends StatefulWidget {
  const New_sell({Key? key}) : super(key: key);

  @override
  State<New_sell> createState() => _New_sellState();
}

class _New_sellState extends State<New_sell> {
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

  // The maximum scroll offset
  // In other words, this means the user has reached the bottom of the list view
  double? _maxOffset;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        SizedBox(
          height: 20,
        ),
        Container(
          height: 40.h,
          width: 300.w,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Shop Name",
              hintText: "Enter your shop name",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(currentDate.toString()),
              ElevatedButton(
                onPressed: () => _selectDate(context),
                child: Text('Select date'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 40.h,
          width: 300.w,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            decoration: InputDecoration(
                labelText: "Name",
                hintText: "Enter your name",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.blue,
                )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 40.h,
          width: 300.w,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            decoration: InputDecoration(
                labelText: "Address",
                hintText: "Enter your address",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(
                  Icons.home,
                  color: Colors.blue,
                )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 40.h,
          width: 300.w,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            decoration: InputDecoration(
                labelText: "Number",
                hintText: "Enter your number",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(
                  Icons.phone,
                  color: Colors.blue,
                )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            width: 400,
            child: Column(children: [
              Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 40,
                      width: 120,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Carrat",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 120,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Money",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ])
            ])),
        SizedBox(
          height: 20,
        ),
        Container(
            width: 400,
            child: Column(children: [
              Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 60,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 40,
                      width: 60,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Weight",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      width: 120,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Money",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ])
            ])),
        SizedBox(
          height: 20,
        ),
        Container(
            width: 400,
            child: Column(children: [
              Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 60,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 40,
                      width: 60,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Weight",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      width: 120,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Money",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ])
            ])),
        SizedBox(
          height: 20,
        ),
        Container(
            width: 400,
            child: Column(children: [
              Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 60,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 40,
                      width: 60,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Weight",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      width: 120,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Money",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ])
            ])),
        SizedBox(
          height: 20,
        ),
        Container(
            width: 400,
            child: Column(children: [
              Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 60,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 40,
                      width: 60,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Weight",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      width: 120,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Money",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ])
            ])),
        SizedBox(
          height: 20,
        ),
        Container(
            width: 400,
            child: Column(children: [
              Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 60,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 40,
                      width: 60,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Weight",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      width: 120,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Money",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ])
            ])),
        SizedBox(
          height: 20,
        ),
        Container(
            width: 400,
            child: Column(children: [
              Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 60,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 40,
                      width: 60,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Weight",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      width: 120,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Money",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ])
            ])),
        SizedBox(
          height: 20,
        ),
        Container(
            width: 400,
            child: Column(children: [
              Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 60,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 40,
                      width: 60,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Weight",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 40,
                      width: 120,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "Money",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    )
                  ])
            ])),
        SizedBox(
          height: 20,
        ),
        Container(
            width: 400,
            child: Column(children: [
              Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 40,
                        width: 60,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black)),
                        child: Text(
                          "19ps",
                          style: TextStyle(
                              fontFamily: "itim",
                              fontSize: 20,
                              color: Colors.black),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        height: 40,
                        width: 60,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black)),
                        child: Text(
                          "6.8b",
                          style: TextStyle(
                              fontFamily: "itim",
                              fontSize: 20,
                              color: Colors.black),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 40,
                        width: 120,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black)),
                        child: Text(
                          "258000Tk",
                          style: TextStyle(
                              fontFamily: "itim",
                              fontSize: 20,
                              color: Colors.black),
                        ))
                  ])
            ])),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 40.h,
          width: 300.w,
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 80),
          child: TextField(
            decoration: InputDecoration(
                labelText: "Discount",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 40.h,
          width: 300.w,
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 80),
          child: TextField(
            decoration: InputDecoration(
                labelText: "Pay",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: 250,
            ),
            Container(
              child: Text(
                "Upload image",
                style: TextStyle(
                    fontSize: 20, fontFamily: "itim", color: Colors.blue),
              ),
            ),
          ],
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
              "Done",
              style: TextStyle(
                  fontSize: 20, fontFamily: "itim", color: Colors.black),
            ),
          ),
        ),
      ]),
    );
  }
}
