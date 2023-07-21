import 'package:arabic_app/views/screens/screen_form_filling.dart';
import 'package:arabic_app/widgts/Text_Styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  List years = [
    SmallText(
      text: '1443 هـ',
      color: Colors.black,
    ),
    SmallText(
      text: '1442 هـ',
      color: Colors.black,
    ),
    SmallText(
      text: '1441 هـ',
      color: Colors.black,
    ),
    SmallText(
      text: '1440 هـ',
      color: Colors.black,
    ),
  ];
  List count = [
    SmallText(
      text: '1500',
      color: Colors.black,
    ),
    SmallText(
      text: '2300',
      color: Colors.black,
    ),
    SmallText(
      text: '0',
      color: Colors.black,
    ),
    SmallText(
      text: '200',
      color: Colors.black,
    ),
  ];
  List icon = [
    Icon(
      Icons.edit_note_outlined,
      color: Colors.blueGrey,
    ),
    Icon(
      Icons.edit_note_outlined,
      color: Colors.blueGrey,
    ),
    Icon(
      Icons.edit_note_outlined,
      color: Colors.blueGrey,
    ),
    Icon(
      Icons.edit_note_outlined,
      color: Colors.blueGrey,
    ),
  ];

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
          padding: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 20.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LargeText(
                text: 'قائمة السنوات',
                color: Colors.lightBlue,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MediumText(text: 'مبلغ الحق الشرعي'),
                  MediumText(text: "السنة"),
                ],
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        color: Colors.blue.withOpacity(.2),
                        child: ListTile(
                          leading: icon[index],
                          title: count[index],
                          trailing: years[index],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton.large(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                SmallText(
                  text: 'اضافة سنة',
                  color: Colors.white,
                ),
              ],
            ),
            onPressed: () {
              Get.to(ScreenFormFilling());
            }),
      ),
    );
  }
}
