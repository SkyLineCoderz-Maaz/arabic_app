import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

class ContainerDecoration extends StatelessWidget {
Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: 10.sp,vertical: 8.sp),
      margin: EdgeInsets.symmetric(vertical: 4.sp),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.3),
        borderRadius: BorderRadius.circular(5.sp),
      ),
      child:child,
    );
  }

ContainerDecoration({
    required this.child,
  });
}
