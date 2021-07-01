import 'package:flutter/material.dart';
//import 'package:flutter_auth/Screens/Driver_Active/driver.dart';
//import 'package:flutter_auth/Screens/Driver_Login/driver_login_screen.dart';
//import 'package:flutter_auth/Screens/Emmergency_homepage/emergency_homepage.dart';
//import 'package:flutter_auth/Screens/Login/login_screen.dart';
//import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/HomePage/components/background.dart';
//import 'package:flutter_auth/Screens/Volunteer_Active/driver.dart';
//import 'package:flutter_auth/Screens/Volunteer_Login/volunteer_login_screen.dart';
//import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/components/rounded_button.dart';
//import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';

import 'package:country_state_city_picker/country_state_city_picker.dart';



class Body extends StatefulWidget {
  const Body({key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  String valueChoose;
  List listItem=['Simara',"Nijgadh","Dummarwana","jeetpur"];
  String countryValue;
  String stateValue;
  String cityValue;
  


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(

      child:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          
          children:<Widget> [
            SizedBox(height: size.height * 0.09),
            Text(
                "Location",
                style: TextStyle(fontSize:24,fontWeight: FontWeight.bold),
            ),
            
            SizedBox(height: size.height * 0.02),
              SvgPicture.asset(
                "assets/icons/signup.svg",
                height: size.height * 0.29,
              ),
            
            SizedBox(height: size.height * 0.02),
            DropdownButton(
              

            //padding:EdgeInsets.only(left:16,right: 16),
            //decoration: BoxDecoration(
          //border: Border.all(color:Colors.grey,width:1),
            //  borderRadius: BorderRadius.circular(15),
            //),
              
              hint: Text("Select location"),
              dropdownColor: Colors.white,
              icon:Icon(Icons.arrow_drop_down),
              iconSize: 60,
              underline: SizedBox(),
              
              value: valueChoose,
              onChanged: (newvalue){
                setState(() {
                  valueChoose=newvalue;
                });
              },
              items:listItem.map((valueItem){
                return DropdownMenuItem(
                  value: valueItem,
                  child:Text(valueItem),
                  );
              }).toList(),
            ),
            /*
            SelectState(
              onCountryChanged: (value) {
              setState(() {
                countryValue = value;
              });
            },
              onStateChanged:(value) {
              setState(() {
                stateValue = value;
              });
            },
              onCityChanged:(value) {
              setState(() {
                cityValue = value;
              });
            },
            
            ),
            */




            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "Continue",
              color:Colors.lightBlue ,
              press: () {
                /*
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
            
                      return DriverLoginScreen();
                    },
                  ),
                );
                */
              },
            ),
            
          ]
        ),
      ),
    );
  }
}  

        

