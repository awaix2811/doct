import 'package:flutter/material.dart';
import 'package:my_doctor/Auth_Screens/Signin_Screen.dart';
import 'package:my_doctor/Auth_Screens/Signup_screen.dart';
import 'package:my_doctor/Widgets/button.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(children: [
        // Add space from the top
        SizedBox(height: screenHeight * 0.06), // 5% of screen height

        // Container with Image
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05, // 8% of screen width
            vertical: screenHeight * 0.01, // 2% of screen height
          ),
          child: Container(
            height: screenHeight * 0.6, // 50% of screen height
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.9),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
              border: Border.all(color: Colors.black12, width: 1.5),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/images/img3.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        // RichText for "Talk to a Doctor"
        Padding(
          padding: EdgeInsets.only(bottom: screenHeight * 0.01),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Your ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Everyday ',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Doctor',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Text(
          "Appointment Medical App",
          style: TextStyle(
              color: Colors.black,
              fontSize: screenWidth * 0.05,
              fontWeight: FontWeight.bold),

        ),
        Text(
          "Talk to doctor,buy medications,or request an ambulance",
          style: TextStyle(
              color: Colors.grey,
              fontSize: screenWidth * 0.03,
          ),

        ),
        SizedBox(height: 20,),
        CustomButton(
          width: 200,
            text: "Signup",
            onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
            }),
        SizedBox(height: 15,),
        CustomButton(
            width: 200,
            text: "Login",
            onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninScreen()));

            })
      ]
      ),
    );
  }
}
