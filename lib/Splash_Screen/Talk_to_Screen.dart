import 'package:flutter/material.dart';
import 'package:my_doctor/Splash_Screen/Get_Started.dart';
import 'package:my_doctor/Widgets/button.dart';

class TalkToScreen extends StatefulWidget {
  const TalkToScreen({super.key});

  @override
  State<TalkToScreen> createState() => _TalkToScreenState();
}

class _TalkToScreenState extends State<TalkToScreen> {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Add space from the top
          SizedBox(height: screenHeight * 0.05), // 5% of screen height

          // Container with Image
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.08, // 8% of screen width
              vertical: screenHeight * 0.02, // 2% of screen height
            ),
            child: Container(
              height: screenHeight * 0.6, // 50% of screen height
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
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
                  'assets/images/img2.jpg',
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
                    text: 'Talk ',
                    style: TextStyle(color: Colors.black, fontSize: screenWidth * 0.06, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'to ',
                    style: TextStyle(color: Colors.green, fontSize: screenWidth * 0.06, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: 'a Doctor',
                    style: TextStyle(color: Colors.green, fontSize: screenWidth * 0.06, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),

          // Subtitle Text
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
            child: Text(
              'Connect patients with doctors who \nshare their language and ethics',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: screenWidth * 0.045), // Font size relative to screen width
            ),
          ),

          const Spacer(),

          // Custom Button at the Bottom
          Padding(
            padding: EdgeInsets.only(bottom: screenHeight * 0.05),
            child: CustomButton(
              text: "Next",
              height: screenHeight * 0.06, // Button height 7% of screen height
              width: screenWidth * 0.5, // Button width 50% of screen width
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>GetStarted()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
