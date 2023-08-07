// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homepageuichallenge/components/List/list.dart';

class DaysList extends StatelessWidget {
  const DaysList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Dayss> days = Dayss.days;

    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: ListView.builder(
          itemCount: days.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Container(
                width: 34.w,
                height: 34.h,
                decoration: BoxDecoration(
                    color: days[index].clicked == true
                        ? Color.fromARGB(255, 11, 12, 26)
                        : Color.fromARGB(255, 181, 182, 196),
                    borderRadius: BorderRadius.circular(9.r)),
                child: Center(
                  child: Text(
                    days[index].day,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        color: days[index].clicked == true
                            ? Colors.white
                            : Colors.black),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
