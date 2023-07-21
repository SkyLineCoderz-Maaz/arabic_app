import 'package:arabic_app/views/screens/screen_change_password.dart';
import 'package:arabic_app/views/screens/screen_login.dart';
import 'package:arabic_app/widgts/Text_Styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ScreenUserDetails extends StatefulWidget {
  const ScreenUserDetails({super.key});

  @override
  State<ScreenUserDetails> createState() => _ScreenUserDetailsState();
}

class _ScreenUserDetailsState extends State<ScreenUserDetails> {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LargeText(text: 'اعدادات'),
              Container(
                height: 100.sp,
                color: Colors.lightBlue.withOpacity(0.2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: Icon(Icons.edit_note_outlined,color: Colors.blueGrey,),
                      title: SmallText(text: 'حسابي',color: Colors.black,),
                      trailing: Icon(Icons.person,color: Colors.blueGrey,),
                    ),
                    ListTile(
                      leading: Icon(Icons.edit_note_outlined,color: Colors.blueGrey,),
                      title: SmallText(text: 'تغيير كلمة المرور',color: Colors.black,),
                      trailing: Icon(Icons.lock,color: Colors.blueGrey,),
                      onTap: (){
                        Get.to(ScreenChangePassword());
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.sp,),

              Container(
                height: 150.sp,
                color: Colors.lightBlue.withOpacity(0.2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.edit_note_outlined,color: Colors.blueGrey,),
                        SmallText(text: 'البيانات الأساسية',color: Colors.black,),
                      ],
                    ),
                    SmallText(text: ':رأس مال 1439هـ (بعد التخميس)',color: Colors.black,),
                    SmallText(text: '500',color: Colors.blue,),
                    SmallText(text: ':تاریخ استحقاق الخمس',color: Colors.black,),
                    SmallText(text: '  1439-04-25',color: Colors.blue,),
                    SmallText(text: ':الوكيل الشرعي ',color: Colors.black,),
                    SmallText(text: 'عبدالكيم أحمد',color: Colors.blue,),
                  ],
                ),
              ),
              SizedBox(height: 15.sp,),
              Container(
                height:40.sp,
                color: Colors.lightBlue.withOpacity(0.2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SmallText(text: 'تسجيل خروج ',color: Colors.black,),
                        SizedBox(width: 15.sp,),
                        IconButton(onPressed: (){
                          Get.to(ScreenLogin());
                        }, icon: Icon(Icons.logout,color: Colors.blueGrey,),)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
