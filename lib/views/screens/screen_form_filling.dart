import 'package:arabic_app/views/screens/screen_user_details.dart';
import 'package:arabic_app/widgts/Text_Styles.dart';
import 'package:arabic_app/widgts/my_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../widgts/custom_button.dart';

class ScreenFormFilling extends StatefulWidget {
  const ScreenFormFilling({super.key});

  @override
  State<ScreenFormFilling> createState() => _ScreenFormFillingState();
}

class _ScreenFormFillingState extends State<ScreenFormFilling> {
  var datePicked=DateTime(1445);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LargeText(text: 'اضافة خمس سنة جديدة',color: Colors.blue,),
                Container(
                  height:150.sp,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black.withOpacity(.2)),
                  ),
                  child: Column(
                    children: [
                      MediumText(text: ' تاريخ الإستحقاق   *', color: Colors.black),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SmallText(text: 'سنة',color: Colors.black,),
                          SmallText(text: 'شہر',color: Colors.black,),
                          SmallText(text: 'يوم',color: Colors.black,),
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
                      SmallText(text: 'تاريخ الاستحقاق هو اليوم الذي سيتم دفع المال فيه'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Container(
                  height: 400.sp,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.3),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        child: MediumText(
                          text: "حسابات بنكية",
                        ),
                      ),
                      SmallText(text: 'حساب جاري بنكي 1'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: 'البنك الأهلي',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 1500',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      SmallText(text: 'حساب ادخار بنكي 1'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 0',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      SmallText(text: 'حساب جاري بنكي 2'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 0',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      SmallText(text: 'حساب ادخار بنكي 2'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 0',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      SmallText(text: 'ودائع 1'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 0',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      SmallText(text: 'ودائع 2'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 0',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MediumText(text: 'المجموع'),
                          MediumText(
                            text: '1500',
                            color: Colors.green,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Container(
                  height: 300.sp,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.3),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MediumText(
                        text: "عملات ",
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child: SmallText(text: ' عملة محلية')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 2000',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      Align(alignment: Alignment.topRight,child: SmallText(text: 'عملة اخرى')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 0',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      Align(alignment: Alignment.topRight,child: SmallText(text: 'عملة اخرى')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 0',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      Align(alignment: Alignment.topRight,child: SmallText(text: 'عملة اخرى')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 0',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MediumText(text: 'المجموع'),
                          MediumText(
                            text: '2000 ',
                            color: Colors.green,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Container(
                  height: 200.sp,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.3),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MediumText(
                        text: "دیون ",
                      ),
                      Align(alignment: Alignment.topRight,child: SmallText(text: '  دين لنا')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 1500',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      Align(alignment: Alignment.topRight,child: SmallText(text: 'دین علینا')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 20000',
                              textStyle: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MediumText(text: 'المجموع'),
                          MediumText(
                            text: '18,500 -',
                            color: Colors.red,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Container(
                  height: 500.sp,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.3),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        child: MediumText(
                          text: " أسهم , محافظ , صناديق",
                        ),
                      ),
                      SmallText(text: 'أسهم / محافظ استثمارية 1'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: 'البنك الأهلي',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 1500',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      SmallText(text: 'أسهم / محافظ استثمارية 2'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 0',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      SmallText(text: 'صناديق / محافظ استثمارية 1'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 0',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      SmallText(text: 'صناديق / محافظ استثمارية 2'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 0',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      SmallText(text: 'أسهم / بدون محافظ 1'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 0',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      SmallText(text: 'أسهم / بدون محافظ 2'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 0',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      SmallText(text: ' أسہم آخری'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 0',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MediumText(text: 'المجموع'),
                          MediumText(
                            text: '0',
                            color: Colors.green,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Container(
                  height: 400.sp,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.3),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MediumText(
                        text: "أشياء اخرى ",
                      ),
                      Align(alignment: Alignment.topRight,child: SmallText(text: ' ذهب لم يستعمل ')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 2500',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      Align(alignment: Alignment.topRight,child: SmallText(text: ' أغراض لا تستعمل')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 0',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      Align(alignment: Alignment.topRight,child: SmallText(text: ' أشياء اخرى')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 800',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      Align(alignment: Alignment.topRight,child: SmallText(text: ' حقوق خدمة عمل')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 0',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      Align(alignment: Alignment.topRight,child: SmallText(text: 'ادخار من جهة عمل')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' ملاحظات',
                            ),
                          ),
                          SizedBox(
                            width: 5.sp,
                          ),
                          Expanded(
                            flex: 1,
                            child: MyInputField2(
                              height: 35.sp,
                              showBorder: true,
                              hint: ' 0',
                              textStyle: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ).marginOnly(
                        left: 8.sp,
                        right: 8.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MediumText(text: 'المجموع'),
                          MediumText(
                            text: '3,300 ',
                            color: Colors.green,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Container(
                    height: 100.sp,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 25.sp,
                              width: 110.sp,
                              child: TextField(
                                textAlign: TextAlign.end,
                                decoration: InputDecoration(
                                  hintText: ' قاسم عبدالكريم',
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10.sp, vertical: 2.sp),
                                  border: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.sp)),
                                    borderSide: BorderSide(
                                        width: 1.5, color: Colors.black),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.sp)),
                                    borderSide: BorderSide(
                                        width: 1.5, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            MediumText(
                              text: 'الوكيل الشرعي',
                              font: 15,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 25.sp,
                              width: 110.sp,
                              child: TextField(
                                textAlign: TextAlign.end,
                                decoration: InputDecoration(
                                  hintText: ' 50 ',
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10.sp, vertical: 2.sp),
                                  border: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.sp)),
                                    borderSide: BorderSide(
                                        width: 1.5, color: Colors.black),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.sp)),
                                    borderSide: BorderSide(
                                        width: 1.5, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            MediumText(
                              text: 'مبلغ الأذونية',
                              font: 15,
                            ),
                          ],
                        ),
                      ],
                    )),
                SizedBox(
                  height: 20.sp,
                ),
                Container(
                  height: 250.sp,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(.3),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LargeText(text: 'نتيجة حساب الخمس',color: Colors.blue,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SmallText(text: '1800',color: Colors.black,),
                          SmallText(
                              text: 'رأس مال السنة الحالية (قبل التخميس)',color: Colors.black,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SmallText(text: '500',color: Colors.black,),
                          SmallText(
                              text: 'رأس مال السنة الماضية (بعد التخميس)',color: Colors.black,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SmallText(text: '1300',color: Colors.black,),
                          SmallText(
                              text: 'الزيادة أو النقصان خلال العام الجاري',color: Colors.black,),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SmallText(text: '1490',color: Colors.black,),
                          SmallText(
                              text: 'رأس مال السنة الحالية (بعد التخميس)',color: Colors.black,),
                        ],
                      ),
                      SizedBox(
                        height: 5.sp,
                      ),
                      Container(
                        height: 100.sp,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue.withOpacity(.2)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SmallText(text: '50',color: Colors.blue,),
                                SmallText(text: 'مأذونية',color: Colors.blue,),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SmallText(text: '260',color: Colors.blue,),
                                SmallText(text: 'خمس الأموال (نقدية وعينية)',color: Colors.blue,),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                MediumText(text: '310',color: Colors.blue,),
                                MediumText(text: 'مجموع الحق الشرعي',color: Colors.blue,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),
                CustomButton(
                    width: 500.sp,
                    height: 40.sp,
                    text: 'حفظ',
                    textStyle: TextStyle(fontSize: 18.sp),
                    onPressed: () {
                      Get.to(ScreenUserDetails());
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
