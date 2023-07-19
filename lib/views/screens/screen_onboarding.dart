import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'screen_login.dart';
import 'package:arabic_app/widgts/LargeText.dart';
class ScreenOnboarding extends StatefulWidget {
  const ScreenOnboarding({super.key});

  @override
  State<ScreenOnboarding> createState() => _ScreenOnboardingState();
}

class _ScreenOnboardingState extends State<ScreenOnboarding> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Get.offAll(ScreenLogin());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),

        backgroundColor: Colors.white,
        body: Padding(

          padding:  EdgeInsets.symmetric(horizontal: 20.sp,vertical: 20.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SmallText(
                color: Colors.black,
                font: 16.sp,
                text:
                'عنوان 1',

              ),
              SmallText(
                color: Colors.blue,
                text:
                'تعليق على الصورة الأول في برنامج التطبيق تعليق على\nالصورة الأول في برنامج التطبيق اهلا وسهلا تعلیق\nعلى الصورة الأول في برنامج التطبيق تعليق على الصورة\nالأول في برنامج التطبيق\nاهلا وسہلا تعلیق علی الصورة الأول في برنامج التطبيق\nتعليق على الصورة الأول في برنامج التطبيق',

              ),
              SizedBox(height: 8.sp,),
              SizedBox(height: 8.sp,),
              SizedBox(height: 8.sp,),
              // SmallText(
              //   color: Colors.blue,
              //   text:
              //   'الصورة الأول في برنامج التطبيق اهلا وسهلا تعلیق',
              //
              // ),
              // SmallText(
              //   color: Colors.blue,
              //   text:
              //   'على الصورة الأول في برنامج التطبيق تعليق على الصورة',
              //
              // ),
              // SmallText(
              //   text: 'الأول في برنامج التطبيق',
              //  color: Colors.blue,),
              // SmallText(
              //   color: Colors.blue,
              //   text:
              //   "اهلا وسہلا تعلیق علی الصورة الأول في برنامج التطبيق",
              //
              // ),
              // SmallText(
              //   color: Colors.blue,
              //   text:
              //   'تعليق على الصورة الأول في برنامج التطبيق',
              //
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
