import 'package:arabic_app/widgts/LargeText.dart';
import 'package:arabic_app/widgts/container_decoration.dart';
import 'package:arabic_app/widgts/my_input_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: LargeText(text:
                  ' تسجيل مستخدم جديد',
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: SmallText(text:
                  'الاسم',
                ),
              ),
              Container(
                height: 43.sp,
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintText: 'الاسم',
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
              Text(
                'الايميل',
                style: TextStyle(
                color: Colors.black54,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500),
              ),
              Container(
                height: 43.sp,
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    hintText: 'الايميل',
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
              Text(
                'كلمة المرور',
                style: TextStyle(
                color: Colors.black54,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500),
              ),
              Container(
                height: 43.sp,

                child: TextField(
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
              Text(
                'إعادة كلمة المرور',
                style: TextStyle(
                color: Colors.black54,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: MyInputField2(
                      height: 45.sp,
                      showBorder: true,
                      hint: "إعادة كلمة المرور",

                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: MyInputField2(
                      height: 45.sp,
                      showBorder: true,
                      hint: "إعادة كلمة المرور",

                    ),
                  ),
                ],
              ),
              ContainerDecoration(child: Column(children: [
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
              ],)),
              Container(

                height: 43.sp,

                child: TextField(
                  keyboardType: TextInputType.emailAddress,
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
              Container(
                alignment: Alignment.center,
                height: 43.sp,
                width: MediaQuery.sizeOf(context).width ,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(30.sp)),
                    border: Border.all(color: Colors.white)),
                child: Text("تسجيل جديد",style: TextStyle(fontSize: 18.sp,color: Colors.white,fontWeight: FontWeight.bold),),
              ),
              Center(
                child: RichText(
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
                    ])),
              ).marginSymmetric(vertical: 25.sp),
            ],
          ),
        ),
      ),
    );
  }
}
