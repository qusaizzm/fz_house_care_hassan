import 'package:flutter/material.dart';
import 'package:fz_hassan/Features/home/home.dart';
import 'package:fz_hassan/init/appbar.dart';
import 'package:fz_hassan/init/authbtn.dart';
import 'package:fz_hassan/init/btn.dart';
import 'package:fz_hassan/init/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fz_hassan/init/push.dart';

import 'singup.dart';
import 'widget/custom_textfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: 100,
          width: 100,
          child: Image.asset(
            'assets/img/logo.png',
            fit: BoxFit.fitHeight,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: Container(),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Expanded(child: Container()),
                  Expanded(child: Container()),
                ],
              ),
            ),
            ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(15.0),
              children: <Widget>[
                const SizedBox(height: 160.0),
                Center(
                  child: Card(
                    color: Colors.white,
                    elevation: 1.0,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          const Text(
                            "Login",
                            style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 15.0),
                          const CustomTextBox(
                            hint: "Email",
                            prefix: Icon(Icons.email),
                            // suffix: Icon(Icons.email),
                          ),
                          const SizedBox(height: 10.0),
                          const CustomTextBox(
                            hint: "Password",
                            prefix: Icon(Icons.visibility),
                          ),
                          const SizedBox(height: 15.0),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(child: Text("Don't Have a Account?")),
                    InkWell(
                      onTap: () => onPush(context: context, go: const SignUp()),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60.0,
                ),
                const MyBTN(go: HassanHome(), txt: "LOGIN"),
                const SizedBox(height: 15.0),
                Center(child: const Text("OR")),
                const SizedBox(height: 15.0),
                Txtox(txt: "Gmail", icon: FontAwesomeIcons.google),
                const SizedBox(height: 10.0),
                Txtox(txt: "Facebook", icon: FontAwesomeIcons.facebookF),
                const SizedBox(height: 10.0),
                Txtox(txt: "Apple", icon: FontAwesomeIcons.apple),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// HassanHome