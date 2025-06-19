import 'package:flutter/material.dart';
import 'package:my_doctor/Auth_Screens/forget-password-screen.dart';
import 'package:my_doctor/User_Pannel/Home_Screen.dart';
import 'package:my_doctor/Widgets/button.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true, // Adjust layout when the keyboard is visible
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight, // Ensure the scroll area fills the screen
                ),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      // Welcome Text Section
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.08,
                          horizontal: screenWidth * 0.05,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Welcome ',
                                    style: TextStyle(
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Back',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "We are excited to have you back, can't wait to see what \n you have been up to since last login",
                            ),
                          ],
                        ),
                      ),
                      // Image Container
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        height: screenHeight * 0.35,
                        width: screenWidth * 0.8,
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
                            'assets/images/img1.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      // Email Input Field
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter your email',
                            labelText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: Colors.green),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                            ),
                            prefixIcon: const Icon(Icons.email),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      // Password Input Field
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter your password',
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: Colors.green),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 4,
                              ),
                            ),
                            prefixIcon: const Icon(Icons.lock),
                          ),
                          obscureText: true,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      // Forget Password Row
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.08),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ForgetPasswordScreen()),
                              );
                            },
                            child: const Text(
                              "Forget password?",
                              style: TextStyle(fontSize: 17, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(), // Push button to the bottom if space is available
                      // Login Button
                      Padding(
                        padding: EdgeInsets.only(bottom: screenHeight * 0.01),
                        child: CustomButton(
                          width: screenWidth * 0.5,
                          text: 'Login',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomeScreen()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
