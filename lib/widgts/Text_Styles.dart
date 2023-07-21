import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LargeText extends StatelessWidget {
 String text;
 Color? color;
 double? font;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      textDirection: TextDirection.rtl,
      style: TextStyle(
        fontFamily: 'ArabicBold',
        fontWeight: FontWeight.w700,
        fontSize: font??25.sp,
        color: color??Colors.black
      ),
    );
  }

 LargeText({
    required this.text,
     this.color,
     this.font,
  });
}
class MediumText extends StatelessWidget {
 String text;
 Color? color;
 double? font;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      textDirection: TextDirection.rtl,
      style: TextStyle(
        fontFamily: 'ArabicFont',
        fontWeight: FontWeight.w600,
        fontSize: font??18.sp,
        color:color?? Colors.black
      ),
    );
  }

 MediumText({
    required this.text,
     this.color,
     this.font,
  });
}
class SmallText extends StatelessWidget {
 String text;
 Color? color;
 double? font;

  @override
  Widget build(BuildContext context) {
    return Text(text,
      textAlign: TextAlign.center,
      // textDirection: TextDirection.ltr,
      style: TextStyle(
        fontFamily: 'ArabicFont',
        fontWeight: FontWeight.w400,
        fontSize: font?? 12.sp,
        color:color?? Colors.grey
      ),
    );
  }

 SmallText({
    required this.text,
     this.color,
     this.font,
  });
}
