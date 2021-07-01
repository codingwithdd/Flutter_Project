import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Emmergency_Volunteer/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var fir=9845;
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Nearest Ambulance Available ",
              style: TextStyle(fontSize:24,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.29,
            ),
            
            SizedBox(height: size.height * 0.0001),
            
            RoundedButton(
              
              text: "$fir",
              
              press: () {
                launch("tel://$fir");
                
              },
              
            ),
            SizedBox(height: size.height * 0.01),
            RoundedButton(
              text: "$fir",
              press: () {
                launch("tel://$fir");
                
              },
            ),
            SizedBox(height: size.height * 0.01),
            RoundedButton(
              text: "$fir",
              //color: kPrimaryLightColor,
              //textColor: Colors.black,
              press: () {
                launch("tel://$fir");
              },
            ),
            SizedBox(height: size.height * 0.01),
            
            
            
          ],
        ),
      ),
    );
  }
}
