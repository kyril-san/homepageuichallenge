import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

sleepInfo(BuildContext context) {
  return Container(
    width: 311.w,
    height: 167.h,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
              color: const Color.fromARGB(255, 11, 12, 26).withOpacity(0.05),
              offset: const Offset(0, 1),
              spreadRadius: 1,
              blurRadius: 1)
        ]),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                  leading: const Icon(
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
                        color: const Color.fromARGB(255, 181, 182, 196)),
                  ),
                ),
                ListTile(
                  leading: const Icon(
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
                        color: const Color.fromARGB(255, 181, 182, 196)),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Column(
              children: [
                ListTile(
                  leading: const Icon(
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
                        color: const Color.fromARGB(255, 181, 182, 196)),
                  ),
                ),
                ListTile(
                  leading: const Icon(
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
                        color: const Color.fromARGB(255, 181, 182, 196)),
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
