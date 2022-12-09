import 'package:admincode/Bigmortge/Big_mortage.dart';
import 'package:admincode/BuyStorage/Buy_storage.dart';
import 'package:admincode/Homepage/Home_page.dart';
import 'package:admincode/Mortagelis/Mortage_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class New_mortage extends StatefulWidget {
  const New_mortage({Key? key}) : super(key: key);

  @override
  State<New_mortage> createState() => _New_mortageState();
}

class _New_mortageState extends State<New_mortage> {
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
  final TextEditingController Name = TextEditingController();
  final TextEditingController Address = TextEditingController();
  final TextEditingController Number = TextEditingController();
  final TextEditingController Ornamentname = TextEditingController();
  final TextEditingController Weight = TextEditingController();
  final TextEditingController Money = TextEditingController();

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
              labelText: "দোকানের নাম ",
              hintText: "দোকানের নাম  লিখুন ",
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
                child: Text('তারিখ'),
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
            controller: Name,
            decoration: InputDecoration(
                labelText: "কাস্টারমার এর নাম ",
                hintText: "কাস্টারমার এর নাম  লিখুন",
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
            controller: Address,
            decoration: InputDecoration(
                labelText: "কাস্টমার এর ঠিকানা ",
                hintText: "কাস্টমার এর ঠিকানা লিখুন",
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
            controller: Number,
            decoration: InputDecoration(
                labelText: "কাস্টমার এর নাম্বার",
                hintText: "কাস্টমার এর নাম্বার লিখুন ",
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
        Column(children: [
          Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 40,
                  width: 200,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "শতাংশ",
                        hintText: '৫%১০০',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                )
              ])
        ]),
        SizedBox(
          height: 20,
        ),
        Container(
            child: Column(children: [
          Row(

              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 40,
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "নাম  ",
                        hintText: "জিনিসের  নাম লিখুন ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "ওজন",
                        hintText: "জিনিসের  ওজন  লিখুন ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ])
        ])),
        SizedBox(
          height: 20,
        ),
        Container(
            child: Column(children: [
          Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 40,
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "নাম  ",
                        hintText: "জিনিসের  নাম লিখুন ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "ওজন",
                        hintText: "জিনিসের  ওজন  লিখুন ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ])
        ])),
        SizedBox(
          height: 20,
        ),
        Container(
            child: Column(children: [
          Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 40,
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "নাম  ",
                        hintText: "জিনিসের  নাম লিখুন ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "ওজন",
                        hintText: "জিনিসের  ওজন  লিখুন ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ])
        ])),
        SizedBox(
          height: 20,
        ),
        Container(
            child: Column(children: [
          Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 40,
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "ওজন",
                        hintText: "জিনিসের  ওজন  লিখুন ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "নাম  ",
                        hintText: "জিনিসের  নাম লিখুন ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ])
        ])),
        SizedBox(
          height: 20,
        ),
        Container(
            child: Column(children: [
          Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 40,
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "নাম  ",
                        hintText: "জিনিসের  নাম লিখুন ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "ওজন",
                        hintText: "জিনিসের  ওজন  লিখুন ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ])
        ])),
        SizedBox(
          height: 20,
        ),
        Container(
            child: Column(children: [
          Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 40,
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "নাম  ",
                        hintText: "জিনিসের  নাম লিখুন ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 40,
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "ওজন",
                        hintText: "জিনিসের  ওজন  লিখুন ",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
              ])
        ])),
        SizedBox(
          height: 20,
        ),
        Container(
            child: Column(children: [
          Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                    height: 40,
                    width: 100,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: Text(
                      " ১২ টি  ",
                      style: TextStyle(
                          fontFamily: "itim",
                          fontSize: 20,
                          color: Colors.black),
                    )),
                SizedBox(
                  width: 10,
                ),
                Container(
                    height: 40,
                    width: 100,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: Text(
                      "৩০.৭.৭ ",
                      style: TextStyle(
                          fontFamily: "itim",
                          fontSize: 20,
                          color: Colors.black),
                    )),
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
                labelText: "টাকা",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) => SimpleDialog(
                      title: const Text("দেখুন বা কিনুন "),
                      contentPadding: const EdgeInsets.all(20.0),
                      children: [
                        const Text(
                            "আপনার ডেটা সঞ্চয় করার জন্য আপনার আরও স্টোরেজ প্রয়োজন"),
                        Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text("ভিডিও ")),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Buy_storage()));
                                },
                                child: Text("কিনুন")),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => New_mortage()));
                                },
                                child: Text("বন্ধ"))
                          ],
                        ),
                      ],
                    ));
          },
          child: Container(
            alignment: Alignment.center,
            height: 40,
            width: 100,
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
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: Text(
              "ঠিক ",
              style: TextStyle(
                  fontSize: 20, fontFamily: "itim", color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              SizedBox(
                width: 50,
              ),
              Text(
                "বড় বন্ধক গুলো দিতে| ",
                style: TextStyle(
                    fontFamily: "itim", fontSize: 20, color: Colors.black),
              ),
              InkWell(
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Big_mortage()));
                }),
                child: Text(
                  "ক্লিক করুন",
                  style: TextStyle(
                      fontFamily: "itim", fontSize: 20, color: Colors.blue),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
