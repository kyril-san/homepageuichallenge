import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonBox extends StatelessWidget {
  final String title, time;
  const ButtonBox({
    super.key,
    required this.title,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 144.w,
      height: 140.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: const Color.fromARGB(255, 11, 12, 26).withOpacity(0.05),
                blurRadius: 2,
                offset: const Offset(0, 1),
                spreadRadius: 5)
          ]),
      padding: EdgeInsets.only(top: 20.h, left: 24.w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.asset('assets/images/Chart.png'),
        SizedBox(height: 13.h),
        Text(
          title,
          style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 181, 182, 196)),
        ),
        Text(
          time,
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        ),
      ]),
    );
  }
}
