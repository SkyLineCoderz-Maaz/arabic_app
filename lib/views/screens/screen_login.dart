import 'package:arabic_app/widgts/LargeText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/gestures.dart';

import 'screen_signup.dart';
class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 25.sp,vertical: 20.sp),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LargeText(
                  text:'حاسبة الخمس',
                  color: Colors.blueAccent,

                ),
                MediumText(
                  text:'تسجيل الدخول',

                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'الايميل',
                    style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  height: 43.sp,

                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      hintText: 'admin@admin.com',
                      contentPadding: EdgeInsets.only(left: 2.h, bottom: 1.h),
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                        borderSide: BorderSide(width: 1.5, color: Colors.blueAccent),
                      ),
                      enabledBorder:
                          OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                            borderSide: BorderSide(width: 1.5, color:  Colors.blueAccent),
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'كلمة المرور',
                    style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500),
                  ),
                ).marginOnly(top: 15.sp),
                Container(
                  height: 43.sp,

                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      hintText: 'كلمة المرور',
                      contentPadding: EdgeInsets.only(left: 2.h, bottom: 1.h),
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                        borderSide: BorderSide(width: 1.5, color: Colors.blueAccent),
                      ),
                      enabledBorder:
                      OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                        borderSide: BorderSide(width: 1.5, color:  Colors.blueAccent),
                      ),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'نسيت كلمة المرور ؟',
                    style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500),
                  ),
                ).marginOnly(bottom: 20.sp,top: 5.sp),
                Container(
                  alignment: Alignment.center,
                  height: 43.sp,
                  width: MediaQuery.sizeOf(context).width ,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(30.sp)),
                      border: Border.all(color: Colors.white)),
                  child: Text("تسجيل دخول",style: TextStyle(fontSize: 18.sp,color: Colors.white,fontWeight: FontWeight.bold),),
                ),
                RichText(text: TextSpan(
                  style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400,color:Colors.black54 ),
                  children: <TextSpan>[
                    TextSpan(text: 'لا تمتلك حساب؟'),
                    TextSpan(
                      text: 'سجل حساب جدید',
                      style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap=(){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ScreenSignUp()),
                          );
                        }
                    ),
                  ]
                )).marginSymmetric(vertical: 25.sp),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
