import 'package:flutter/material.dart';
//import 'package:flutter_auth/Screens/Driver_Active/driver.dart';
import 'package:flutter_auth/Screens/Driver_Login/driver_login_screen.dart';
import 'package:flutter_auth/Screens/Emmergency_homepage/emergency_homepage.dart';
//import 'package:flutter_auth/Screens/Login/login_screen.dart';
//import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/HomePage/components/background.dart';
//import 'package:flutter_auth/Screens/Volunteer_Active/driver.dart';
import 'package:flutter_auth/Screens/Volunteer_Login/volunteer_login_screen.dart';
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
              "Namaste",
              style: TextStyle(fontSize:24,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.29,
            ),
            SizedBox(height: size.height * 0.0001),
            RoundedButton(
              text: "Emmergency Help",
              press: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return EmmergencyHomepage();
                    },
                  ),
                );
              
              },
            ),
            SizedBox(height: size.height * 0.01),
            RoundedButton(
              text: "Driver login",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return DriverLoginScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.01),
            RoundedButton(
              text: "Volounter login",
              //color: kPrimaryLightColor,
              //textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return VolunteerLoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
