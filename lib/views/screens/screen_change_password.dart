import 'package:arabic_app/widgts/Text_Styles.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../widgts/custom_button.dart';

class ScreenChangePassword extends StatefulWidget {
  const ScreenChangePassword({super.key});

  @override
  State<ScreenChangePassword> createState() => _ScreenChangePasswordState();
}

class _ScreenChangePasswordState extends State<ScreenChangePassword> {
  bool _oldPasswordVisible = false; // Keeps track of password visibility
  bool _newPasswordVisible = false; // Keeps track of password visibility
  bool _confirmPasswordVisible = false; // Keeps track of password visibility
  final TextEditingController _oldController = TextEditingController();
  final TextEditingController _newController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();
  void _oldPasswordVisibility() {
    setState(() {
      _oldPasswordVisible = !_oldPasswordVisible;
    });
  }
  void _newPasswordVisibility() {
    setState(() {
      _newPasswordVisible = !_newPasswordVisible;
    });
  }
  void _confirmPasswordVisibility() {
    setState(() {
      _confirmPasswordVisible = !_confirmPasswordVisible;
    });
  }

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
          child: SingleChildScrollView(
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
                    controller: _oldController,
                    obscureText: !_oldPasswordVisible,
                    // obscureText: true,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      hintText: 'كلمة المرور القديمة',
                      prefixIcon: GestureDetector(
                        onTap: _oldPasswordVisibility,
                        child: Icon(_oldPasswordVisible?Icons.visibility:Icons.visibility_off),
                      ),
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
                    controller: _newController,
                    obscureText: !_newPasswordVisible,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      hintText: 'كلمة المرور الجديدة',
                      prefixIcon: GestureDetector(
                        onTap: _newPasswordVisibility,
                        child: Icon(_newPasswordVisible?Icons.visibility:Icons.visibility_off),
                      ),
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
                    controller: _confirmController,
                    obscureText: _confirmPasswordVisible,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      hintText: 'اعادة كلمة المرور الجديدة',
                      prefixIcon: GestureDetector(
                        onTap: _confirmPasswordVisibility,
                        child: Icon(_confirmPasswordVisible?Icons.visibility:Icons.visibility_off),
                      ),
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
      ),
    );
  }
}
