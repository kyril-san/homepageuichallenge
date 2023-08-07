import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

profilepage(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 100.w,
        height: 100.h,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(27)),
        child: Image.asset('assets/images/User Photo.png'),
      ),
      SizedBox(height: 8.h),
      Text(
        'Anna Howard',
        style: TextStyle(
            fontSize: 24.sp, fontWeight: FontWeight.w900, color: Colors.white),
      )
    ],
  );
}
