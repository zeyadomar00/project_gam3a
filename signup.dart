// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:application5/widgets/myButton.dart';
import 'package:application5/widgets/myHeading.dart';
import 'package:application5/widgets/myTextField.dart';
import 'package:application5/widgets/myTextFieldLable.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2FCF4),
      appBar: AppBar(
        backgroundColor: Color(0xFFF2FCF4),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
          children: [
            MyHeading(lable: "Creat Your Account"),
            Container(height: 10),
            MyTextFieldLable(
              lable: "Username",
            ),
            Container(height: 5),
            MyTextFormField(hintText: "Enter your Name"),
            Container(height: 10),
            MyTextFieldLable(
              lable: "Email Address",
            ),
            Container(height: 5),
            MyTextFormField(hintText: "Enter your E-mail"),
            Container(height: 10),
            MyTextFieldLable(
              lable: " NumbePhoner",
            ),
            Container(height: 5),
            MyTextFormField(hintText: "Enter your Phone_no"),
            Container(height: 10),
            MyTextFieldLable(
              lable: "Password",
            ),
            Container(height: 5),
            MyTextFormField(hintText: "**********"),
            Container(height: 10),
            MyTextFieldLable(
              lable: "Confirm Password",
            ),
            Container(height: 5),
            MyTextFormField(hintText: "**********"),
            Container(height: 30),
            MyButton(
              lable: "Login",
              width: 256,
              height: 44,
              onPressed: () {},
            ),
            Container(height: 30),
            Row(children: [
            Expanded(
                child: Divider(
              thickness: 1.5,
              endIndent: 15,
            )),
            Text("Or Create account with"),
            Expanded(
                child: Divider(
              thickness: 1.5,
              indent: 15,
            )),
          ]),
          Container(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {},
                  child: Image.asset(
                    "images/facebook.png",
                    width: 30,
                  ),
                  minWidth: 30,
                ),
                Container(width: 100,),
                MaterialButton(
                  onPressed: () {},
                  child: Image.asset(
                    "images/google.png",
                    width: 30,
                  ),
                ),
              ],
            ),
            Container(height: 50),
    
                InkWell(
                  
                onTap: () {
                  Navigator.pushNamed(context, "login");
                },
                child: const Center(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                      text: "Already have existing account?",
                    ),
                    TextSpan(
                        text: "Login Now",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ])),
                ),
                          ),
              
            
          ],
        ),
      ),
    );
  }
}
