// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homepageuichallenge/components/Homepage/button_box.dart';
import 'package:homepageuichallenge/components/Homepage/days_list_page.dart';
import 'package:homepageuichallenge/components/Homepage/profile_page.dart';
import 'package:homepageuichallenge/components/Homepage/sleep_info.dart';

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
                      child: sleepInfo(context),
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
                        color: Color.fromARGB(255, 181, 182, 196)
                            .withOpacity(0.15),
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
                  ButtonBox(time: '6:49 AM', title: 'Awake'),
                  ButtonBox(time: '6h: 23m', title: 'Sleep')
                ],
              )
            ],
          ),
        ));
  }
}
