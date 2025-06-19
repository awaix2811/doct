// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_local_variable, file_names
import 'package:flutter/material.dart';
import 'package:my_doctor/Widgets/button.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: Text(
            "Forget Password",
            style: TextStyle(),
          ),
        ),
        body: Container(
          child: Column(
            children: [

              SizedBox(
                height: 10
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 50),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                          color: Colors.black,
                          width: 2), // Focused border color and width
                    ),
                    prefixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                ),
              ),
              SizedBox(height:  20,),
              CustomButton(
                width: 250,
                  text: 'Verify Email',
                  onPressed: (){})

            ],
          ),
        ),
      );
  }
}
