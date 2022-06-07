import 'package:flutter/material.dart';
import 'package:login_page_1/screens/splash.dart';


const SAVE_KEY_NAME ='userLoggedIn';

void  main() {
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home : ScreenSplash(),
    );
  }
}