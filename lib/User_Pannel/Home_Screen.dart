import 'package:flutter/material.dart';
import 'package:my_doctor/User_Pannel/Top_Doctors.dart';
import '../Widgets/navigation bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Profile image
          Padding(
            padding: const EdgeInsets.only(top: 65, left: 10),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage("assets/images/img1.png"),
              backgroundColor: Colors.black,
            ),
          ),

          SizedBox(width: 10,),
          //hello text
          Padding(
            padding: const EdgeInsets.only(top: 75, left: 90),
            child: Column(
              children: [
                Text(
                  "Hello,Zeeshan",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
                Text(
                  "How are you today?",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ],
            ),
          ),
          // Notification icon in the top-right corner
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.greenAccent.shade200,
                borderRadius: BorderRadius.circular(40)
              ),
              margin: EdgeInsets.only(top: 75, right: 20),
              child: IconButton(
                icon: Icon(size: 35, Icons.notifications, color: Colors.black),
                onPressed: () {
                  // Action when the notification icon is tapped
                },
              ),
            ),
          ),
          //Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  prefix: Icon(Icons.search),
                  hintText: "Search here",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )
              ),
            ),
          ),
          //Upcoming schedule text

          Padding(
            padding: const EdgeInsets.only(top: 220, left: 25),
            child: Text(
              "Upcoming Schedule",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // see all
          Padding(
            padding: const EdgeInsets.only(top: 225, left: 335),
            child: GestureDetector(
                onTap: () {},
                child: Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                )),
          ),
          //front poster

          Container(
            margin: EdgeInsets.only(top: 265, left: 20),
            height: 150,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 5,
                  blurRadius: 14,
                  offset: const Offset(0, 4),
                ),
              ],
              border: Border.all(color: Colors.black12, width: 1.5),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        "Dr Rashid Nawaz",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "[Surgeon]",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                ),
                //Appointment container
                GestureDetector(
                  onTap: (){
                   // Navigator.push(context, MaterialPageRoute(builder: (context)=>SigninScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 95, left: 20),
                    height: 40,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text(
                            "Book Appointment",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //Container for image
                Container(
                  margin: EdgeInsets.only(left: 230, top: 5),
                  height: 170,
                  child: Image.asset("assets/images/img1.png"),
                ),
              ],
            ),
          ),
          // Icons Row
          Padding(
            padding: const EdgeInsets.only(top: 430, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Doctor Icon + Label
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.local_hospital,
                      size: 50,
                      color: Colors.green,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Doctor',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                // Pharmacy Icon + Label
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.medical_services,
                      size: 50,
                      color: Colors.green,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Pharmacy',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                // Ambulance Icon + Label
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.local_shipping,
                      size: 50,
                      color: Colors.green,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Ambulance',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),

                // Hospital Icon + Label
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.apartment,
                      size: 50,
                      color: Colors.green,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Hospital',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Top doctors
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 110, left: 20, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Doctors",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>TopDoctors()));

                    },
                    child: Text(
                      "See All",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  )
                ],
              ),
            ),
          ),

          // ListView of Doctors

          Padding(
            padding: const EdgeInsets.only(top: 555, left: 10, right: 10),
            child: Container(
              height: MediaQuery.of(context).size.height -
                  540 -
                  70, // Adjust height dynamically
              decoration: BoxDecoration(
                color: Colors.white70, // Optional background color
                borderRadius: BorderRadius.circular(10), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: ListView(
                physics: BouncingScrollPhysics(),
                padding:
                    const EdgeInsets.all(10), // Add internal padding if needed
                children: [
                  // First Container
                  Container(
                    height: 110,
                    margin: const EdgeInsets.only(bottom: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.black87, width: 1),
                    ),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8, left: 20),
                          child: CircleAvatar(
                            radius: 45,
                            backgroundImage:
                                AssetImage('assets/images/img1.png'),
                          ),
                        ),
                        Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start, // Align text left
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, left: 130),
                              child: Text(
                                'Dr. Abdullah Sultan',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 130, top: 4),
                              child: Text(
                                'Medical Specialist',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            // Rating Section
                            Container(
                              margin: const EdgeInsets.only(left: 130),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 6),
                              decoration: BoxDecoration(
                                color: Colors.green[50],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.green[700],
                                    size: 16,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    '4.4',
                                    style: TextStyle(
                                      color: Colors.green[700],
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    '54 reviews',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 360, vertical: 40),
                          child: Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),
                  ),

                  // Second Container of doctor detail

                  Container(
                      height: 110,
                      margin: const EdgeInsets.only(bottom: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.blue, width: 1),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 20),
                            child: CircleAvatar(
                              radius: 45,
                              backgroundImage:
                                  AssetImage('assets/images/img2.jpg'),
                            ),
                          ),
                          Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start, // Align text left
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 130),
                                child: Text(
                                  'Dr.Hamdan Ali',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 130, top: 4),
                                child: Text(
                                  'Child Specialist',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              // Rating Section
                              Container(
                                margin: const EdgeInsets.only(left: 130),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 6),
                                decoration: BoxDecoration(
                                  color: Colors.green[50],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.green[700],
                                      size: 16,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      '4.1',
                                      style: TextStyle(
                                        color: Colors.green[700],
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      '71 reviews',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 360, vertical: 40),
                            child: Icon(Icons.arrow_forward),
                          ),
                        ],
                      )),

                  //
                  // Third Container
                  Container(
                      height: 110,
                      margin: const EdgeInsets.only(bottom: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.purple, width: 1),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 20),
                            child: CircleAvatar(
                              radius: 45,
                              backgroundImage:
                                  AssetImage('assets/images/dr1.png'),
                            ),
                          ),
                          Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start, // Align text left
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 130),
                                child: Text(
                                  'Dr. Amina Abbas',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 130, top: 4),
                                child: Text(
                                  'Neurologist',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              // Rating Section
                              Container(
                                margin: const EdgeInsets.only(left: 130),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 6),
                                decoration: BoxDecoration(
                                  color: Colors.green[50],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.green[700],
                                      size: 16,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      '4.0',
                                      style: TextStyle(
                                        color: Colors.green[700],
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      '51 reviews',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 360, vertical: 40),
                            child: Icon(Icons.arrow_forward),
                          ),
                        ],
                      )),
                  //4th Container
                  Container(
                      height: 110,
                      margin: const EdgeInsets.only(bottom: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.purple, width: 1),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 20),
                            child: CircleAvatar(
                              radius: 45,
                              backgroundImage:
                                  AssetImage('assets/images/dr2.png'),
                            ),
                          ),
                          Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start, // Align text left
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 130),
                                child: Text(
                                  'Dr.Tahira Waseem',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 130, top: 4),
                                child: Text(
                                  'Gynaecologist',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              // Rating Section
                              Container(
                                margin: const EdgeInsets.only(left: 130),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 6),
                                decoration: BoxDecoration(
                                  color: Colors.green[50],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.green[700],
                                      size: 16,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      '4.0',
                                      style: TextStyle(
                                        color: Colors.green[700],
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(width: 6),
                                    Text(
                                      '74 reviews',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 360, vertical: 40),
                            child: Icon(Icons.arrow_forward),
                          ),
                        ],
                      )
                  ),

                ],
              ),
            ),
          ),

          Align(
              alignment: Alignment.bottomCenter, child: AnimatedBottomNavBar()),
        ],
      ),
    );
  }
}
