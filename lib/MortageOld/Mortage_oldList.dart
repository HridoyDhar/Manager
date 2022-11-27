import 'package:admincode/Homepage/Home_page.dart';
import 'package:admincode/Mortageperson/Mortage_person.dart';
import 'package:admincode/Oldandnew/OldandNew_mortage.dart';
import 'package:admincode/OldmortageDetails/OldMortage_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mortage_oldlist extends StatefulWidget {
  const Mortage_oldlist({Key? key}) : super(key: key);

  @override
  State<Mortage_oldlist> createState() => _Mortage_oldlistState();
}

class _Mortage_oldlistState extends State<Mortage_oldlist> {
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
        body: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
                height: 40.h,
                width: 300.w,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Search",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.blueGrey,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                )),
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
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OldMortage_details()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                height: 40.h,
                width: 200.w,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.greenAccent,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                      child: Text(
                        "1.Mr krishna                                               569000",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mortage_person()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                height: 40.h,
                width: 200.w,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.greenAccent,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                      child: Text(
                        "2.Mr krishna                                               569000",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mortage_person()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                height: 40.h,
                width: 200.w,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.greenAccent,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                      child: Text(
                        "3.Mr krishna                                               569000",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mortage_person()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                height: 40.h,
                width: 200.w,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.greenAccent,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                      child: Text(
                        "4.Mr krishna                                               569000",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mortage_person()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                height: 40.h,
                width: 200.w,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.greenAccent,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                      child: Text(
                        "5.Mr krishna                                               569000",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mortage_person()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                height: 40.h,
                width: 200.w,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.greenAccent,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                      child: Text(
                        "6.Mr krishna                                               569000",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home_page()));
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
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Total: 12570000Tk",
                  style: TextStyle(
                      fontSize: 20, fontFamily: "itim", color: Colors.white),
                ),
              ),
            ),
          ],
        ));
  }
}
