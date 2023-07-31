import 'package:fdoctor/main_layout.dart';
import 'package:fdoctor/screens/auth_page.dart';
import 'package:fdoctor/screens/doctor_details.dart';
import 'package:fdoctor/utils/config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  //this is for push navigator
  static final navigatorKey = GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //define Themedata here
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      title: 'Flutter Doctor App',
      theme: ThemeData(
        //pre-define Themedata here
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Config.primarycolor,
          border: Config.OutlinedBorder,
          focusedBorder: Config.focusBorder,
          errorBorder: Config.errorBorder,
          enabledBorder: Config.OutlinedBorder,
          floatingLabelStyle: TextStyle(color: Config.primarycolor),
          prefixIconColor: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Config.primarycolor,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey.shade700,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      initialRoute: '/',
      routes: {
        //this is initial route of the app
        //which is auth page(login and sign up)
        '/': (context) => const AuthPage(),

        'main': (context) => const MainLayout(),
        'doc_details': (context) => const DoctorDetails(),
      },
    );
  }
}
