// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, non_constant_identifier_names

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
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 21.w, top: 33.h, bottom: 19.h),
                            child: IconButton(
                                onPressed: () {
                                  ShowModalBottomSheet(context);
                                },
                                icon: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                )),
                          ),
                          Center(
                            child: profilepage(context),
                          )
                        ],
                      ),
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

  Future<dynamic> ShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        barrierColor: Color.fromARGB(255, 11, 12, 26).withOpacity(0.4),
        context: context,
        constraints: BoxConstraints(minHeight: 700.h),
        builder: (_) {
          return Container(
            height: 700.h,
            width: 375.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r))),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      // size: ,
                      color: Color.fromARGB(255, 181, 182, 196),
                    )),
                SizedBox(
                  height: 77.h,
                ),
                Text(
                  '5:23 AM',
                  style: TextStyle(
                      fontSize: 64.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 11, 12, 26)),
                ),
                Text(
                  'Sunday,July 5',
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 181, 182, 196)),
                ),
                Spacer(),
                Container(
                  width: 311.w,
                  height: 64.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 11, 12, 26)
                                .withOpacity(0.05),
                            offset: Offset(0, 1),
                            blurRadius: 1,
                            spreadRadius: 1)
                      ]),
                  child: Row(
                    children: [
                      Expanded(
                          child: ListTile(
                        leading: Icon(
                          Icons.bedtime,
                          color: Colors.black,
                        ),
                        title: Text(
                          'Deep Rest',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 11, 12, 26)),
                        ),
                        subtitle: Text(
                          'Rain on leaves',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 181, 182, 196)),
                        ),
                      )),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.fast_rewind),
                            Icon(Icons.pause),
                            Icon(Icons.fast_forward)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                )
              ],
            ),
          );
        });
  }
}
