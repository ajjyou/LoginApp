// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:login_page_1/main.dart';
import 'package:login_page_1/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenLogin extends StatefulWidget {
   ScreenLogin({ Key? key }) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _usernameController  = TextEditingController();

  final _passwordController = TextEditingController();

  bool _isDataMatched = true;

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            TextFormField(
              controller: _usernameController,
              decoration:const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Username'
              ),
              validator: (value){
              // if(_isDataMatched){
              //   return null;
              // }else{
              //   return'error';
              // }
              if(value==null||value.isEmpty){
                return 'value is empty';
              }else{
                return null;
              }
        
            }
            ),
            const SizedBox(
              height: 20,
            ),
        
            TextFormField(
              controller: _passwordController,
              obscureText: true,
               decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Password',
            ),
            validator: (value){
              // if(_isDataMatched){
              //   return null;
              // }else{
              //   return'error';
              // }
               if(value==null||value.isEmpty){
                return 'value is empty';
              }else{
                return null;
              }
        
            }
              
            
            ),
            SizedBox(
              height: 20,
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                  visible: !_isDataMatched,
                  child: Text('Username password doesnot match',
                  style: TextStyle(
                    color: Colors.red
                    ),
                    ),
                ),
                ElevatedButton.icon(
                  onPressed: (){
                    if(  _formkey.currentState!.validate()){
                      checkLogin(context);

                    }else{
                      print('data empty');
                    }
                  
                    // checkLogin(context);
        
                  }, 
                  icon:const Icon(Icons.check),
                   label:const Text('Login'),
                ),
              ],
            ),
          ],),
        ),
      ),
    )
    );
  }

  void checkLogin(BuildContext ctx) async{
   final _username = _usernameController.text;
   final _password = _passwordController.text;
   if(_username=='hala' &&_password =='3535'){
     print('username and password match');

     //go to home

     final _sharedprefs = await SharedPreferences.getInstance();
     await _sharedprefs.setBool(SAVE_KEY_NAME,true);
     

 
   Navigator.of(ctx)
   .pushReplacement(MaterialPageRoute(builder: (ctx1)=>ScreenHome()));
   }else{
     setState(() {
       _isDataMatched = false;
       
     });
     


   }
  }
}

