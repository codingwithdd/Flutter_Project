import 'package:flutter/material.dart';
//import 'package:flutter_auth/Screens/Login/login_screen.dart';
//import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/Driver_Active/components/background.dart';
//import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/components/rounded_button.dart';
//import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Have a safe drive sir!!!",
              style: TextStyle(fontSize:24,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.1),
            
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.29,
            ),
            SizedBox(height: size.height * 0.06),
            RoundedButton(
              text: "Active",
              press: () {
                /*
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WelcomeScreen();
                    },
                  ),
                );
                */
              },
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: "InActive",
              press: () {
                /*
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WelcomeScreen();
                    },
                  ),
                );
                */
              },
            ),
            SizedBox(height: size.height * 0.01),
            
          ],
        ),
      ),
    );
  }
}
