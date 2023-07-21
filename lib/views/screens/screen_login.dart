import 'package:arabic_app/views/screens/screen_new_user.dart';
import 'package:arabic_app/widgts/Text_Styles.dart';
import 'package:arabic_app/widgts/custom_button.dart';
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
          padding: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 20.sp),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LargeText(
                  text: 'حاسبة الخمس',
                  color: Colors.blueAccent,
                ),
                MediumText(
                  text: 'تسجيل الدخول',
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
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.sp,vertical: 10.sp),
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.blueAccent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.blueAccent),
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
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.sp,vertical: 10.sp),
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.blueAccent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.sp)),
                        borderSide:
                            BorderSide(width: 1.5, color: Colors.blueAccent),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SmallText(
                    text:
                    'نسيت كلمة المرور ؟',
                    font: 18.sp,
                    color: Colors.blue,
                  ),
                ).marginOnly(bottom: 20.sp, top: 5.sp),
                CustomButton(
                    width: 500.sp,
                    height: 40.sp,
                    text: 'تسجيل دخول',
                    textStyle: TextStyle(fontSize: 18.sp),
                    onPressed: () {
                      Get.to(ScreenNewUser());
                    }),
                RichText(
                    text: TextSpan(
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54),
                        children: <TextSpan>[
                      TextSpan(text: 'لا تمتلك حساب؟'),
                      TextSpan(
                          text: 'سجل حساب جدید',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ScreenSignUp()),
                              );
                            }),
                    ])).marginSymmetric(vertical: 25.sp),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
