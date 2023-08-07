// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homepageuichallenge/components/Homepage/days_list_page.dart';
import 'package:homepageuichallenge/components/Homepage/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 443.h,
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 319.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/Background Stars.png')),
                        color: Color.fromARGB(255, 11, 12, 26),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40.r),
                          bottomRight: Radius.circular(40.r),
                        ),
                      ),
                      child: profilepage(context),
                    ),
                    Positioned(
                      top: 277.h,
                      left: 32.w,
                      child: _sleepInfo(context),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h),
              DaysList(),
              SizedBox(height: 22.h),
              Row(
                children: [
                  SizedBox(width: 10.w),
                  Container(
                    width: 130.w,
                    height: 130.h,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 181, 182, 196),
                        shape: BoxShape.circle),
                    child: Center(
                      child: Text(
                        '78%',
                        style: TextStyle(
                            fontSize: 36.sp, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 62.w,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Time in Bed',
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 181, 182, 196)),
                      ),
                      Text(
                        '8h 12m',
                        style: TextStyle(
                            fontSize: 36.sp, fontWeight: FontWeight.w700),
                      )
                    ],
                  ))
                ],
              ),
              SizedBox(height: 42.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 144.w,
                    height: 140.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 11, 12, 26)
                                  .withOpacity(0.05),
                              blurRadius: 2,
                              offset: Offset(0, 1),
                              spreadRadius: 5)
                        ]),
                    child: Column(
                        children: [Image.asset('assets/images/Chart.png')]),
                  ),
                  Container(
                    width: 144.w,
                    height: 140.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(255, 11, 12, 26)
                                  .withOpacity(0.05),
                              blurRadius: 2,
                              offset: Offset(0, 1),
                              spreadRadius: 5)
                        ]),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

_sleepInfo(BuildContext context) {
  return Container(
    width: 311.w,
    height: 167.h,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 11, 12, 26).withOpacity(0.05),
              offset: Offset(0, 1),
              spreadRadius: 1,
              blurRadius: 1)
        ]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24.w, top: 12.h),
          child: Text(
            'Sleep Information',
            style: TextStyle(
                fontSize: 14.sp,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700),
          ),
        ),
        Row(
          children: [
            Expanded(
                child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.bedtime_rounded,
                    color: Colors.black,
                    size: 20,
                  ),
                  title: Text(
                    '3h 34m',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'Deep Sleep',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 181, 182, 196)),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.bed,
                    color: Colors.black,
                    size: 20,
                  ),
                  title: Text(
                    '12:24 AM',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'Going to bed',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 181, 182, 196)),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.snooze,
                    color: Colors.black,
                    size: 20,
                  ),
                  title: Text(
                    '12m',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'Falling asleep',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 181, 182, 196)),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.sunny,
                    color: Colors.black,
                    size: 20,
                  ),
                  title: Text(
                    '6:30 AM',
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    'Waking up',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 181, 182, 196)),
                  ),
                ),
              ],
            ))
          ],
        ),
      ],
    ),
  );
}
