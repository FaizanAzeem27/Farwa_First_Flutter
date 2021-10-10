import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image(image: AssetImage("assets/images/fb.png"), height: 80, width: 80,),
              flex: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('English'),
                SizedBox(width: 5,),
                Icon(Icons.circle, size: 7,),
                SizedBox(width: 5,),
                Text('Change')
              ],
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      controller: email,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        hintText: "Email or Phone",
                      )
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      controller: pass,
                      textAlignVertical: TextAlignVertical.center,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                      )
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap: login,
                      child: Container(
                        height: 50,
                        color: Color.fromRGBO(0, 0, 199, .7),
                        child: Center(
                          child: Text(
                            'LOG IN',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Sign up for Facebook'),
                  SizedBox(height: 20,),
                  Text('Need Help?')
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
  
  void login(){
    setState(() {
      email.text = '';
      pass.text = '';
    });
  }
}