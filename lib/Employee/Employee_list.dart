import 'package:admincode/Employedetails/Employe_details.dart';
import 'package:admincode/Employee/ManufacturingmanList/Manufacturingman_list.dart';
import 'package:admincode/ManagerList/Manager_list.dart';
import 'package:admincode/Mangerdetails/Manager_details.dart';
import 'package:admincode/Manufacturing%20man/Manufacturing_man.dart';
import 'package:admincode/ManufacturingmanDetails/ManufacturingmanDetails.dart';
import 'package:admincode/WorkerDetails/Worker_details.dart';
import 'package:admincode/WorkerList/Worker_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Employee_list extends StatefulWidget {
  const Employee_list({Key? key}) : super(key: key);

  @override
  State<Employee_list> createState() => _Employee_listState();
}

class _Employee_listState extends State<Employee_list> {
  // DateTime currentDate = DateTime.now();
  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime? pickedDate = await showDatePicker(
  //       context: context,
  //       initialDate: currentDate,
  //       firstDate: DateTime(1900),
  //       lastDate: DateTime(3050));
  //   if (pickedDate != null && pickedDate != currentDate)
  //     setState(() {
  //       currentDate = pickedDate;
  //     });
  // }

  final ScrollController _controller = ScrollController();
  double _scrollOffset = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(actions: [
      //   IconButton(
      //     onPressed: () {
      //       showSearch(
      //         context: context,
      //         delegate: CustomSearchDelegate(),
      //       );
      //     },
      //     icon: const Icon(Icons.search),
      //   )
      // ]),
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
          // SizedBox(
          //   height: 20,
          // ),
          // Container(
          //   child: Column(
          //     mainAxisSize: MainAxisSize.min,
          //     children: <Widget>[
          //       Text(currentDate.toString()),
          //       ElevatedButton(
          //         onPressed: () => _selectDate(context),
          //         child: Text('Select date'),
          //       ),
          //     ],
          //   ),
          // ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Manager_list()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              height: 40.h,
              width: 300.w,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/manager.png"),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    child: Text(
                      "Manager",
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
            height: 50.h,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Worker_list()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              height: 40.h,
              width: 300.w,
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
                  Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/worker.png"),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    child: Text(
                      "Worker",
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
            height: 50.h,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Employe_details()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              height: 40.h,
              width: 300.w,
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
                  Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/estate-agent.png"),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    child: Text(
                      "SellesMan",
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
            height: 50.h,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Manufacturingman_list()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              height: 40.h,
              width: 300.w,
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
                  Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("assets/employee.png"),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Container(
                    child: Text(
                      " Manufacturing man",
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
          // SizedBox(
          //   height: 20.h,
          // ),
          // InkWell(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => Employe_details()));
          //   },
          //   child: Container(
          //     margin: EdgeInsets.symmetric(horizontal: 20.w),
          //     height: 40.h,
          //     width: 300.w,
          //     decoration: BoxDecoration(
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withOpacity(0.2),
          //           spreadRadius: 3,
          //           blurRadius: 3,
          //           offset: Offset(0, 2), // changes position of shadow
          //         ),
          //       ],
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(10.r),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Icon(
          //           Icons.person,
          //           color: Colors.greenAccent,
          //         ),
          //         SizedBox(
          //           width: 15.w,
          //         ),
          //         Container(
          //           child: Text(
          //             "5.Mr                                                          Rahul",
          //             style: TextStyle(
          //                 fontSize: 15.sp,
          //                 fontWeight: FontWeight.w700,
          //                 color: Colors.black),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 20.h,
          // ),
          // InkWell(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => Employe_details()));
          //   },
          //   child: Container(
          //     margin: EdgeInsets.symmetric(horizontal: 20.w),
          //     height: 40.h,
          //     width: 300.w,
          //     decoration: BoxDecoration(
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withOpacity(
          //             0.2,
          //           ),
          //           spreadRadius: 3,
          //           blurRadius: 3,
          //           offset: Offset(0, 2), // changes position of shadow
          //         ),
          //       ],
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(10.r),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Icon(
          //           Icons.person,
          //           color: Colors.greenAccent,
          //         ),
          //         SizedBox(
          //           width: 15.w,
          //         ),
          //         Container(
          //           child: Text(
          //             "6.Mr                                                          Rahul",
          //             style: TextStyle(
          //                 fontSize: 15.sp,
          //                 fontWeight: FontWeight.w700,
          //                 color: Colors.black),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 20.h,
          // ),
          // InkWell(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => Employe_details()));
          //   },
          //   child: Container(
          //     margin: EdgeInsets.symmetric(horizontal: 20.w),
          //     height: 40.h,
          //     width: 300.w,
          //     decoration: BoxDecoration(
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withOpacity(0.2),
          //           spreadRadius: 3,
          //           blurRadius: 3,
          //           offset: Offset(0, 2), // changes position of shadow
          //         ),
          //       ],
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(10.r),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Icon(
          //           Icons.person,
          //           color: Colors.greenAccent,
          //         ),
          //         SizedBox(
          //           width: 15.w,
          //         ),
          //         Container(
          //           child: Text(
          //             "7.Mr                                                          Rahul",
          //             style: TextStyle(
          //                 fontSize: 15.sp,
          //                 fontWeight: FontWeight.w700,
          //                 color: Colors.black),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 20.h,
          // ),
          // InkWell(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => Employe_details()));
          //   },
          //   child: Container(
          //     margin: EdgeInsets.symmetric(horizontal: 20.w),
          //     height: 40.h,
          //     width: 300.w,
          //     decoration: BoxDecoration(
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withOpacity(0.3),
          //           spreadRadius: 3,
          //           blurRadius: 3,
          //           offset: Offset(0, 2), // changes position of shadow
          //         ),
          //       ],
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(10.r),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Icon(
          //           Icons.person,
          //           color: Colors.greenAccent,
          //         ),
          //         SizedBox(
          //           width: 15.w,
          //         ),
          //         Container(
          //           child: Text(
          //             "8.Mr                                                          Rahul",
          //             style: TextStyle(
          //                 fontSize: 15.sp,
          //                 fontWeight: FontWeight.w700,
          //                 color: Colors.black),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 20.h,
          // ),
          // InkWell(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => Employe_details()));
          //   },
          //   child: Container(
          //     margin: EdgeInsets.symmetric(horizontal: 20.w),
          //     height: 40.h,
          //     width: 300.w,
          //     decoration: BoxDecoration(
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withOpacity(0.2),
          //           spreadRadius: 3,
          //           blurRadius: 3,
          //           offset: Offset(0, 2), // changes position of shadow
          //         ),
          //       ],
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(10.r),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Icon(
          //           Icons.person,
          //           color: Colors.greenAccent,
          //         ),
          //         SizedBox(
          //           width: 15.w,
          //         ),
          //         Container(
          //           child: Text(
          //             "9.Mr                                                          Rahul",
          //             style: TextStyle(
          //                 fontSize: 15.sp,
          //                 fontWeight: FontWeight.w700,
          //                 color: Colors.black),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 20.h,
          // ),
          // InkWell(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => Employe_details()));
          //   },
          //   child: Container(
          //     margin: EdgeInsets.symmetric(horizontal: 20.w),
          //     height: 40.h,
          //     width: 300.w,
          //     decoration: BoxDecoration(
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withOpacity(0.2),
          //           spreadRadius: 3,
          //           blurRadius: 3,
          //           offset: Offset(0, 2), // changes position of shadow
          //         ),
          //       ],
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(10.r),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Icon(
          //           Icons.person,
          //           color: Colors.greenAccent,
          //         ),
          //         SizedBox(
          //           width: 15.w,
          //         ),
          //         Container(
          //           child: Text(
          //             "10.Mr                                                          Rahul",
          //             style: TextStyle(
          //                 fontSize: 15.sp,
          //                 fontWeight: FontWeight.w700,
          //                 color: Colors.black),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 20.h,
          // ),
          // InkWell(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => Employe_details()));
          //   },
          //   child: Container(
          //     margin: EdgeInsets.symmetric(horizontal: 20.w),
          //     height: 40.h,
          //     width: 300.w,
          //     decoration: BoxDecoration(
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withOpacity(0.2),
          //           spreadRadius: 3,
          //           blurRadius: 3,
          //           offset: Offset(0, 2), // changes position of shadow
          //         ),
          //       ],
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(10.r),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Icon(
          //           Icons.person,
          //           color: Colors.greenAccent,
          //         ),
          //         SizedBox(
          //           width: 15.w,
          //         ),
          //         Container(
          //           child: Text(
          //             "11.Mr                                                          Rahul",
          //             style: TextStyle(
          //                 fontSize: 15.sp,
          //                 fontWeight: FontWeight.w700,
          //                 color: Colors.black),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 20.h,
          // ),
          // InkWell(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => Employe_details()));
          //   },
          //   child: Container(
          //     margin: EdgeInsets.symmetric(horizontal: 20.w),
          //     height: 40.h,
          //     width: 300.w,
          //     decoration: BoxDecoration(
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withOpacity(0.5),
          //           spreadRadius: 5,
          //           blurRadius: 7,
          //           offset: Offset(0, 3), // changes position of shadow
          //         ),
          //       ],
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(10.r),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Icon(
          //           Icons.person,
          //           color: Colors.greenAccent,
          //         ),
          //         SizedBox(
          //           width: 15.w,
          //         ),
          //         Container(
          //           child: Text(
          //             "12.Mr                                                          Rahul",
          //             style: TextStyle(
          //                 fontSize: 15.sp,
          //                 fontWeight: FontWeight.w700,
          //                 color: Colors.black),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 20.h,
          // ),
          // InkWell(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => Employe_details()));
          //   },
          //   child: Container(
          //     margin: EdgeInsets.symmetric(horizontal: 20.w),
          //     height: 40.h,
          //     width: 300.w,
          //     decoration: BoxDecoration(
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withOpacity(0.5),
          //           spreadRadius: 5,
          //           blurRadius: 7,
          //           offset: Offset(0, 3), // changes position of shadow
          //         ),
          //       ],
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(10.r),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Icon(
          //           Icons.person,
          //           color: Colors.greenAccent,
          //         ),
          //         SizedBox(
          //           width: 15.w,
          //         ),
          //         Container(
          //           child: Text(
          //             "13.Mr                                                          Rahul",
          //             style: TextStyle(
          //                 fontSize: 15.sp,
          //                 fontWeight: FontWeight.w700,
          //                 color: Colors.black),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 20.h,
          // ),
          // InkWell(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => Employe_details()));
          //   },
          //   child: Container(
          //     margin: EdgeInsets.symmetric(horizontal: 20.w),
          //     height: 40.h,
          //     width: 300.w,
          //     decoration: BoxDecoration(
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withOpacity(0.5),
          //           spreadRadius: 5,
          //           blurRadius: 7,
          //           offset: Offset(0, 3), // changes position of shadow
          //         ),
          //       ],
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(10.r),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Icon(
          //           Icons.person,
          //           color: Colors.greenAccent,
          //         ),
          //         SizedBox(
          //           width: 15.w,
          //         ),
          //         Container(
          //           child: Text(
          //             "14.Mr                                                          Rahul",
          //             style: TextStyle(
          //                 fontSize: 15.sp,
          //                 fontWeight: FontWeight.w700,
          //                 color: Colors.black),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 20.h,
          // ),
          // InkWell(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => Employe_details()));
          //   },
          //   child: Container(
          //     margin: EdgeInsets.symmetric(horizontal: 20.w),
          //     height: 40.h,
          //     width: 300.w,
          //     decoration: BoxDecoration(
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withOpacity(0.5),
          //           spreadRadius: 5,
          //           blurRadius: 7,
          //           offset: Offset(0, 3), // changes position of shadow
          //         ),
          //       ],
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(10.r),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Icon(
          //           Icons.person,
          //           color: Colors.greenAccent,
          //         ),
          //         SizedBox(
          //           width: 15.w,
          //         ),
          //         Container(
          //           child: Text(
          //             "15.Mr                                                          Rahul",
          //             style: TextStyle(
          //                 fontSize: 15.sp,
          //                 fontWeight: FontWeight.w700,
          //                 color: Colors.black),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 20.h,
          // ),
          // InkWell(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => Employe_details()));
          //   },
          //   child: Container(
          //     margin: EdgeInsets.symmetric(horizontal: 20.w),
          //     height: 40.h,
          //     width: 300.w,
          //     decoration: BoxDecoration(
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.grey.withOpacity(0.2),
          //           spreadRadius: 3,
          //           blurRadius: 3,
          //           offset: Offset(0, 2), // changes position of shadow
          //         ),
          //       ],
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(10.r),
          //     ),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Icon(
          //           Icons.person,
          //           color: Colors.greenAccent,
          //         ),
          //         SizedBox(
          //           width: 15.w,
          //         ),
          //         Container(
          //           child: Text(
          //             "4.Mr                                                          Rahul",
          //             style: TextStyle(
          //                 fontSize: 15.sp,
          //                 fontWeight: FontWeight.w700,
          //                 color: Colors.black),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = ['Krishna', '7788463'];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: (() {
          query = '';
        }),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: (() {
        close(context, null);
        query = '';
      }),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var number in searchTerms) {
      if (number.toString().contains(query.toString())) {
        matchQuery.add(number);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var number in searchTerms) {
      if (number.toString().contains(query.toString())) {
        matchQuery.add(number);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
