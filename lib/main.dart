import 'package:arabic_app/views/screens/screen_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(builder: (context){
      return Sizer(builder: (context, orientation, deviceType) {
        return ResponsiveApp(
            builder: (context){
              return GetMaterialApp(
                home: ScreenOnboarding(),
                theme: new ThemeData(scaffoldBackgroundColor: Colors.white,
                fontFamily: 'ArabicFont'
                ),
                debugShowCheckedModeBanner: false,
              );
            }
        );
      });
    });
  }
}
