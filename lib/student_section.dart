import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Student extends StatefulWidget {
  const Student({Key? key}) : super(key: key);

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                // First, add the image as the background
                Image.asset(
                  'assets/Studenthomelogo.png', // Replace with your image path
                  width: double.infinity,
                  height: 225,
                  fit: BoxFit.cover,
                ),

                // Then, overlay the AppBar on top of the image
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: AppBar(
                    backgroundColor:
                        Colors.transparent, // Make AppBar transparent
                    elevation: 0, // Remove shadow
                  ),
                ),
                Positioned(
                  top: 72,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              child: Image.asset('assets/circleimage.png'),
                              radius: 30,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome back',
                                  style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  'Roshni',
                                  style: GoogleFonts.poppins(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            )
                          ],
                        ),
                        // const SizedBox(
                        //   height: 16,
                        // ),
                        const Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors
                                  .white, // Background color of the circle avatar
                              radius: 20.0, // Radius of the circle avatar
                              child: Icon(
                                Icons.search, // The icon you want to display
                                size: 20.0, // Size of the icon
                                color: Color(0xff9163D7), // Color of the icon
                              ),
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors
                                  .white, // Background color of the circle avatar
                              radius: 20.0, // Radius of the circle avatar
                              child: Icon(
                                Icons.messenger, // The icon you want to display
                                size: 20.0, // Size of the icon
                                color: Color(0xff9163D7), // Color of the icon
                              ),
                            ),
                            SizedBox(
                              width: 14,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors
                                  .white, // Background color of the circle avatar
                              radius: 20.0, // Radius of the circle avatar
                              child: Icon(
                                Icons
                                    .notification_important, // The icon you want to display
                                size: 20.0, // Size of the icon
                                color: Color(0xff9163D7), // Color of the icon
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 98,
                  left: 188,
                  right: 15,
                  child: Image.asset(
                    'assets/casuallife.png',
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Live classes ',
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'View all',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: const Color(0xff9163D7),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 170,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xffFBD900),
                              Colors.yellow.shade200,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        top: -20,
                        left: 250,
                        right: 35,
                        child: Image.asset(
                          'assets/micro.png',
                        ),
                      ),
                      Positioned(
                        top: 18,
                        left: 21,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'World of living',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Fatima Khan | Science',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.person),
                                Text(
                                  '28 students joined',
                                  style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 35,
                              width: 90,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff9163D7),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                  ),
                                ),
                                child: const Text('Next'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Today's classes ",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.calendar_month_outlined,
                          color: Color(0xff9163D7),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 170,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xffF63A7D).withOpacity(.95),
                              const Color(0xffF63A7D).withOpacity(.45),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        top: -15,
                        left: 280,
                        right: 30,
                        child: Image.asset(
                          'assets/tube.png',
                        ),
                      ),
                      Positioned(
                        top: 14,
                        left: 21,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Period 1',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Science',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  child: Image.asset(
                                    'assets/tube.png',
                                  ),
                                  radius: 18,
                                ),
                                Text(
                                  '  Sara Blasko',
                                  style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Chapter 3: Geometry and it's issues",
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "View Lesson",
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tomorrow's classes ",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.calendar_month_outlined,
                          color: Color(0xff9163D7),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 170,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xffF63A7D).withOpacity(.95),
                              const Color(0xffF63A7D).withOpacity(.45),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        top: -15,
                        left: 280,
                        right: 30,
                        child: Image.asset(
                          'assets/tube.png',
                        ),
                      ),
                      Positioned(
                        top: 14,
                        left: 21,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Period 1',
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Science',
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  child: Image.asset(
                                    'assets/tube.png',
                                  ),
                                  radius: 18,
                                ),
                                Text(
                                  '  Sara Blasko',
                                  style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Chapter 3: Geometry and it's issues",
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "View Lesson",
                              style: GoogleFonts.lato(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        "Teacher's Note ",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Stack(clipBehavior: Clip.none, children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 130,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.redAccent.withOpacity(.50),
                            Colors.red.withOpacity(.90)
                          ],
                          begin: Alignment.topRight,
                          end: Alignment.topLeft,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Positioned(
                      top: 16,
                      left: 21,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                             crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                child: Image.asset(
                                  'assets/tube.png',
                                ),
                              ),
                               const SizedBox(width: 8,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Neetu Kapoor',
                                    style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 1,
                                  ),
                                  Text(
                                    'Science',
                                    style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 95),
                                child: Text(
                                  '4 Hours ago',
                                  style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16,),
                          Text(
                            'Bring practical notebook to the class, we\nwill conduct some experiments tomorrow.',
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                  ),
              const SizedBox(
                height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tomorrow's classes ",
                        style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.calendar_month_outlined,
                          color: Color(0xff9163D7),
                        ),
                      ),
                    ],
                  ),
                ],
                ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff6A53F6),Color(0xffBF68DE)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
          ),
          child: ListView(
            children:  <Widget>[
              DrawerHeader(
                padding: EdgeInsets.only(top: 60,left: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Image.asset(
                        'assets/Stonehill.png',
                      ),
                      radius: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Text(
                            'Stonehill\nInternational School',
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          'Bangalore, India',
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.person,size: 40,color: Colors.white,),
                title: Text('Teachers',
                style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),
                ),
                onTap: () {
                  // Handle item tap
                },
              ),
              ListTile(
                leading: Icon(Icons.person_2_outlined,size: 40,color: Colors.white,),
                title: Text('Classmates',
                  style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),
                ),
                onTap: () {
                  // Handle item tap
                },
              ),
              ListTile(
                leading: Icon(Icons.menu_book,size: 38,color: Colors.white,),
                title: Text('Syllabus',
                  style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),
                ),
                onTap: () {
                  // Handle item tap
                },
              ),
              ListTile(
                leading: Icon(Icons.calendar_today_outlined,size: 38,color: Colors.white,),
                title: Text('Attendence',
                  style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),
                ),
                onTap: () {
                  // Handle item tap
                },
              ),
              ListTile(
                leading: Icon(Icons.calendar_month_sharp,size: 38,color: Colors.white,),
                title: Text('Calender',
                  style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),
                ),
                onTap: () {
                  // Handle item tap
                },
              ),
              ListTile(
                leading: Icon(Icons.pin_drop,size: 40,color: Colors.white,),
                title: Text('School Board',
                  style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),
                ),
                onTap: () {
                  // Handle item tap
                },
              ),
              ListTile(
                leading: Icon(Icons.currency_rupee,size: 38,color: Colors.white,),
                title: Text('Fee Portal',
                  style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),
                ),
                onTap: () {
                  // Handle item tap
                },
              ),
            ],
          ),

        ),
      ),
    );
  }
}
