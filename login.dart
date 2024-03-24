import 'package:application5/widgets/myButton.dart';
import 'package:application5/widgets/myHeading.dart';
import 'package:application5/widgets/myTextField.dart';
import 'package:application5/widgets/myTextFieldLable.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage ({super.key});

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2FCF4),
      appBar: AppBar(
          backgroundColor: Color(0xffF2FCF4),
          leading:
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios))),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              MyHeading(lable: "Login to your Account"),
              SizedBox(
                height: 80,
              ),
              MyTextFieldLable(lable: "Email Address"),
              Container(height: 10),
              MyTextFormField(hintText: "xxxy@example.com"),
              Container(height: 20),
              MyTextFieldLable(lable: "Password"),
              Container(height: 10),
              MyTextFormField(hintText: "************"),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  alignment: Alignment.centerRight,
                  child: const Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1A7431),
                    ),
                  ),
                ),
              ),
            ],
          ),
          MyButton(width: 256, height: 44, lable: "login", onPressed: () {}),
          SizedBox(
            height: 25,
          ),
          Row(children: [
            Expanded(
                child: Divider(
              thickness: 1.5,
              endIndent: 15,
            )),
            Text("Or Login with"),
            Expanded(
                child: Divider(
              thickness: 1.5,
              indent: 15,
            )),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 25,
                    child: Image.asset(
                      "images/facebook.png",
                    ),
                    backgroundColor: Colors.white,
                  )),
              InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/google.png"),
                    backgroundColor: Colors.white,
                  ))
            ],
          ),
          Container(height: 110),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "SignUp");
            },
            child: const Center(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: "Don't Have An Account ? ",
                ),
                TextSpan(
                    text: "Create new account",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ])),
            ),
          )
        ]),
      ),
    );
  }
}
