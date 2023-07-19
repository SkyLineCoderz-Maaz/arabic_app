import 'package:arabic_app/widgts/Text_Styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../widgts/custom_button.dart';
import 'screen_login.dart';

class ScreenSignUp extends StatefulWidget {
  const ScreenSignUp({super.key});

  @override
  State<ScreenSignUp> createState() => _ScreenSignUpState();
}

class _ScreenSignUpState extends State<ScreenSignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 25.sp,vertical: 20.sp),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                LargeText(text:
                  ' تسجيل مستخدم جديد',
                ),
                SmallText(text:
                  'الاسم',
                  font: 18.sp,
                ),
                Container(
                  height: 43.sp,
                  child: TextField(
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      hintText: 'الاسم',
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.sp,vertical: 10.sp),
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
                SmallText(text:
                  'الايميل',
                  font: 18.sp,
                ),
                Container(
                  height: 43.sp,
                  child: TextField(
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      hintText: 'الايميل',
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.sp,vertical: 10.sp),
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
                SmallText(text:
                  'كلمة المرور',
                  font: 18.sp,
                ),
                Container(
                  height: 43.sp,
                  child: TextField(
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      hintText: 'كلمة المرور',
                      contentPadding: EdgeInsets.symmetric(horizontal: 10.sp,vertical: 10.sp),
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
                SmallText(text:
                  'إعادة كلمة المرور',
                  font: 18.sp,
                ),
                Container(
                  height: 43.sp,
                  child: TextField(
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      hintText: 'إعادة كلمة المرور',
                      contentPadding: EdgeInsets.symmetric(horizontal: 8.sp),
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
                ).marginOnly(bottom: 10.sp),
                CustomButton(
                    width: 500.sp,
                    height: 40.sp,
                    text: ' تسجيل جديد',
                    textStyle: TextStyle(fontSize: 18.sp),
                    onPressed: () {}),
                RichText(
                    text: TextSpan(
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54),
                        children: <TextSpan>[
                      TextSpan(text: 'لديك حساب بالفعل ؟'),
                      TextSpan(
                          text: ' تسجيل دخول',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ScreenLogin()),
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
