import 'package:arabic_app/views/screens/screen_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../widgts/Text_Styles.dart';
import '../../widgts/custom_button.dart';

class ScreenNewUser extends StatefulWidget {
  const ScreenNewUser({super.key});

  @override
  State<ScreenNewUser> createState() => _ScreenNewUserState();
}

class _ScreenNewUserState extends State<ScreenNewUser> {
  var datePicked=DateTime(1445);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            actions: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(
                Icons.arrow_forward_sharp,
                color: Colors.blue,
              ),),
              SizedBox(
                width: 20.sp,
              ),
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 20.sp),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LargeText(text: 'البيانات الأساسية'),
                    MediumText(text: ' تاريخ الإستحقاق   *', color: Colors.black),
                    SmallText(text: 'تاريخ الاستحقاق الأخير الذي تم في دفع المال'),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SmallText(text: 'سنة',color: Colors.blue,),
                        SmallText(text: 'شہر',color: Colors.blue,),
                        SmallText(text: 'يوم',color: Colors.blue,),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // SmallText(text: 'H'),
                        Container(
                          height: 40.sp,
                          width: 40.sp,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black.withOpacity(.2)),
                          ),
                          child:Center(
                            child: IconButton(
                                onPressed: () async {
                                  datePicked = (await DatePicker.showSimpleDatePicker(
                                    context,
                                    initialDate: DateTime(1445),
                                    firstDate: DateTime(625),
                                    lastDate: DateTime(1445),
                                    dateFormat: "dd-MMMM-yyyy",
                                    locale: DateTimePickerLocale.ar,
                                    looping: false,

                                  ))!;
                                  setState(() {

                                  });

                                  final snackBar =
                                  SnackBar(content: Text("Date Picked $datePicked"));
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                },
                                icon: Text("${datePicked.year}",)),
                          ),
                        ),
                        Container(
                          height: 40.sp,
                          width: 40.sp,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black.withOpacity(.2)),
                          ),
                          child:Center(
                            child: IconButton(
                                onPressed: () async {
                                  datePicked = (await DatePicker.showSimpleDatePicker(
                                    context,
                                    initialDate: DateTime(1445),
                                    firstDate: DateTime(625),
                                    lastDate: DateTime(1445),
                                    dateFormat: "dd-MMMM-yyyy",
                                    locale: DateTimePickerLocale.ar,
                                    looping: false,

                                  ))!;
                                  setState(() {

                                  });

                                  final snackBar =
                                  SnackBar(content: Text("Date Picked $datePicked"));
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                },
                                icon: Text("${datePicked.month}")),
                          ),
                        ),
                        Container(
                          height: 40.sp,
                          width: 40.sp,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black.withOpacity(.2)),
                          ),
                          child:Center(
                            child: IconButton(
                                onPressed: () async {
                                  datePicked = (await DatePicker.showSimpleDatePicker(
                                    context,
                                    initialDate: DateTime(1445),
                                    firstDate: DateTime(625),
                                    lastDate: DateTime(1445),
                                    dateFormat: "dd-MMMM-yyyy",
                                    locale: DateTimePickerLocale.ar,
                                    looping: false,

                                  ))!;
                                  setState(() {

                                  });

                                  final snackBar =
                                  SnackBar(content: Text("Date Picked $datePicked"));
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                },
                                icon: Text("${datePicked.day}")),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: SmallText(
                        text: 'رأس مال السنة الأخيرة ( بعد التخميس)',
                        font: 16.sp,
                      ),
                    ),
                    Container(
                      height: 43.sp,
                      child: TextField(
                        textAlign: TextAlign.end,
                        decoration: InputDecoration(
                          hintText: '500',
                          contentPadding: EdgeInsets.symmetric(horizontal: 8.sp),
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
                    ).marginOnly(bottom: 10.sp),
                    Align(
                      alignment: Alignment.topRight,
                      child: SmallText(
                        text: 'الوكيل الشرعي',
                        font: 18.sp,
                      ),
                    ),
                    Container(
                      height: 43.sp,
                      child: TextField(
                        textAlign: TextAlign.end,
                        decoration: InputDecoration(
                          hintText: 'عبدالكريم أحمد',
                          contentPadding: EdgeInsets.symmetric(horizontal: 8.sp),
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
                    ).marginOnly(bottom: 10.sp),
                    CustomButton(
                        width: 500.sp,
                        height: 40.sp,
                        text: 'حفظ',
                        textStyle: TextStyle(fontSize: 18.sp),
                        onPressed: () {
                          Get.to(ScreenHome());
                        }),
                  ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}
