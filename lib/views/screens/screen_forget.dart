import 'package:arabic_app/widgts/Text_Styles.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../widgts/custom_button.dart';

class ScreenForget extends StatefulWidget {
  const ScreenForget({super.key});

  @override
  State<ScreenForget> createState() => _ScreenForgetState();
}

class _ScreenForgetState extends State<ScreenForget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            Icon(Icons.arrow_forward_sharp,color: Colors.blue,),
            SizedBox(width: 20.sp,),
          ],
        ),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 25.sp,vertical: 20.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              LargeText(text: 'اعدادات/ تغيير كلمة المرور'),
              SizedBox(height: 35.sp,),
              SmallText(text: 'كلمة المرور القديمة',font: 18.sp,),
              Container(
                height: 43.sp,
                child: TextField(
                  obscureText: true,
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    hintText: 'كلمة المرور القديمة',
                    prefixIcon: Icon(Icons.visibility),
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
              SmallText(text: ' كلمة المرور الجديدة',font: 18.sp,),
              Container(
                height: 43.sp,
                child: TextField(
                  obscureText: true,
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    hintText: 'كلمة المرور الجديدة',
                    prefixIcon: Icon(Icons.visibility),
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
              SmallText(text: 'اعادة كلمة المرور الجديدة',font: 18.sp,),
              Container(
                height: 43.sp,
                child: TextField(
                  obscureText: true,
                  textAlign: TextAlign.end,
                  decoration: InputDecoration(
                    hintText: 'اعادة كلمة المرور الجديدة',
                    prefixIcon: Icon(Icons.visibility),
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
              SizedBox(height: 6.sp,),
              CustomButton(
                  width: 500.sp,
                  height: 40.sp,
                  text: 'حفظ',
                  textStyle: TextStyle(fontSize: 18.sp),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
