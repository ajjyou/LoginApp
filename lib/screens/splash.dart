import 'package:flutter/material.dart';
import 'package:login_page_1/main.dart';
import 'package:login_page_1/screens/home.dart';
import 'package:login_page_1/screens/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({ Key? key }) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  
  
  @override
  void initState() {
   checkUserLoggedIn();
    super.initState();
  }
@override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/images/flat,750x1000,075,f.jpg',height: 300,) ,
      ),
      
    );
  }

  Future<void> gotoLogin() async{
   await Future.delayed(Duration(seconds:  3));
   Navigator.of(context).push(MaterialPageRoute(builder: (ctx) =>ScreenLogin(), 
   ),
   );
  }
  Future<void> checkUserLoggedIn() async{
    final _sharedprefs = await  SharedPreferences.getInstance();
    final _userLoggedIn =_sharedprefs.getBool(SAVE_KEY_NAME);
    if (_userLoggedIn==null || _userLoggedIn==false){
      gotoLogin();
    }else{
      Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (ctx1)=> ScreenHome()));
    }

    
}
}